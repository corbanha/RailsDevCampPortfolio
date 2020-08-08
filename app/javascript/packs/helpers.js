/* These are various javascript function helpers to do things on the webpage */

function scrollToElementById(id) {
  let element = document.getElementById(id);
  element.scrollIntoView();
}

function scrollToTop() {
  $("html, body").animate({ scrollTop: 0 }, "slow");
  return false;
}
