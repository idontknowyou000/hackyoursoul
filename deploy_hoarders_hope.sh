#!/bin/bash

# deploy_hoarders_hope_full.sh
# Purpose: Fully enhanced Hoarders Hope website deployment script

# --- Step 1: Setup folders ---
echo "Creating project folders..."
mkdir -p HoardersHope/{css,images}
cd HoardersHope || exit

# --- Step 2: Write HTML ---
echo "Writing enhanced HTML..."
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Hoarders Hope | Cleaning & Hoarding Services</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header id="home">
  <nav class="navbar">
    <a href="#home">Home</a>
    <a href="#services">Services</a>
    <a href="#gallery">Gallery</a>
    <a href="#contact">Contact</a>
    <a href="#contact" class="cta">Book Estimate</a>
  </nav>
  <div class="hero-content">
    <h1>Hoarders Hope</h1>
    <p>Compassionate hoarding cleanup, home cleaning, and moving services. Friendly, affordable, and judgment‑free.</p>
  </div>
</header>

<section class="container services" id="services">
  <h2>Our Services</h2>
  <div class="grid grid-3">
    <div class="card">
      <h3>Hoarding Cleanup</h3>
      <p>From mild clutter to extreme hoarding situations. Respectful, discreet, and supportive service every step of the way.</p>
    </div>
    <div class="card">
      <h3>Home Cleaning</h3>
      <p>Standard and deep cleaning for homes, apartments, and rentals. We help restore comfort and peace of mind.</p>
    </div>
    <div class="card">
      <h3>Moving Services</h3>
      <p>Packing, moving, and haul‑away assistance. Perfect for downsizing, relocations, or cleanouts.</p>
    </div>
  </div>

  <div class="image-strip">
    <img src="images/clean1.jpg" alt="Before and after cleanup" />
    <img src="images/clean2.jpg" alt="Room organization" />
    <img src="images/clean3.jpg" alt="Living space cleaned" />
    <img src="images/clean4.jpg" alt="Home cleaning results" />
  </div>

  <div class="estimates">
    <p><strong>Estimated Pricing:</strong></p>
    <ul>
      <li>Standard Cleaning: <strong>$100 – $275</strong></li>
      <li>Deep Cleaning / Hoarding Cleanup: <strong>$300 – $400</strong></li>
      <li>Moving Services: <strong>$150 minimum</strong></li>
    </ul>
    <p>Final pricing depends on the size and condition of the space.</p>
  </div>
</section>

<section class="container gallery-section" id="gallery">
  <h2>Real Results</h2>
  <div class="gallery">
    <img src="images/before1.jpg" alt="Before cleanup" />
    <img src="images/after1.jpg" alt="After cleanup" />
    <img src="images/before2.jpg" alt="Before hoarding cleanup" />
    <img src="images/after2.jpg" alt="After hoarding cleanup" />
    <img src="images/before3.jpg" alt="Before room cleanup" />
    <img src="images/after3.jpg" alt="After room cleanup" />
  </div>
</section>

<section class="contact" id="contact">
  <h2>Contact & Availability</h2>
  <p>📧 <a href="mailto:hopehoarders@gmail.com">hopehoarders@gmail.com</a></p>
  <p>📱 469‑807‑0652</p>
  <p>Message or email us to check availability and schedule an on‑site estimate.</p>
</section>

<footer>
  © Hoarders Hope — Cleaning • Hoarding Cleanup • Moving Services
</footer>

<script>
// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor=>{
  anchor.addEventListener('click',function(e){
    e.preventDefault();
    document.querySelector(this.getAttribute('href')).scrollIntoView({behavior:'smooth'});
  });
});
</script>

</body>
</html>
EOF

# --- Step 3: Write CSS ---
echo "Writing enhanced CSS..."
cat > css/style.css << 'EOF'
:root{
  --green:#2f855a;
  --mint:#68d391;
  --sky:#e6fffa;
  --warm:#fef3c7;
  --text:#1f2937;
  --muted:#4b5563;
}

*{box-sizing:border-box;margin:0;padding:0;}
body{font-family:system-ui, -apple-system, Segoe UI, Roboto, sans-serif;background:linear-gradient(180deg,var(--sky),#ffffff 40%);color:var(--text);}
a{text-decoration:none;color:inherit;}

.navbar{
  display:flex;
  justify-content:center;
  gap:1.5rem;
  padding:1rem 2rem;
  position:sticky;
  top:0;
  background:white;
  z-index:1000;
  box-shadow:0 2px 10px rgba(0,0,0,0.05);
}
.navbar a.cta{
  background:var(--green);
  color:white;
  padding:.5rem 1rem;
  border-radius:8px;
  font-weight:600;
  transition:.3s;
}
.navbar a.cta:hover{background:var(--mint);color:#1f2937;}

header{
  background:linear-gradient(180deg, rgba(47,133,90,.85), rgba(47,133,90,.85)), url('../images/hope-hero.jpg') center/cover no-repeat;
  color:white;
  text-align:center;
  padding:6rem 2rem;
}
header
