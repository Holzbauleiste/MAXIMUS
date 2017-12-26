var slideIndex = 1;
showSlides(1);

var el = document.querySelector('.js-fade');

if (el.classList.contains('is-paused')){
  el.classList.remove('is-paused');
}

function plusSlides(n) {
  showSlides(slideIndex += n, n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n, direction) {
  var i;
  var slides = document.getElementsByClassName("slide");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  slides[slideIndex-1].style.display = "block";
}

