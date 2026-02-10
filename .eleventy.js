module.exports = function(eleventyConfig) {
  return {
    dir: {
      input: ".",
      includes: "",
      data: "content",
      output: "_site"
    },
    passthroughFileCopy: true
  };
};
