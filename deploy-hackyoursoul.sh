#!/bin/bash

# === Check Node & NPM ===
if ! command -v npm &>/dev/null; then
  echo "Node.js/npm not found! Install Node.js first."
  exit 1
fi

# === Install Netlify CLI globally ===
echo "Installing Netlify CLI..."
sudo npm install -g netlify-cli

# === Make sure Netlify CLI is working ===
if ! command -v netlify &>/dev/null; then
  echo "Netlify CLI installation failed."
  exit 1
fi
echo "Netlify CLI installed: $(netlify --version)"

# === Login via SSH key ===
echo "Please make sure your SSH key is added to GitHub (you did this already)."
echo "Netlify login will open a browser if needed."
netlify login

# === Initialize site ===
echo "Unlinking any previous site..."
netlify unlink || true

echo "Linking current folder to Netlify..."
netlify link --manual --name hackyoursoul --dir . || true

# === Deploy to production ===
echo "Deploying to production..."
netlify deploy --prod --dir .

echo "✅ HackYourSoul should now be live!"
