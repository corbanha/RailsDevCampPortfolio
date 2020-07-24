// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
//const Particles = require('particlesjs');

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log($.fn.jquery);

import './handpicked_bootstrap.js';

// On load up functions:
$(document).ready(() => {
  /*let particles = Particles.init
  ({
    selector: '.particle_background',
    maxParticles: 250,
    connectParticles: true,
    speed: .2,
    sizeVariations: 3,
    color: ['#000000'],
    responsive: [
      {
        breakpoint: 1000,
        options: {
          maxParticles: 100
        }
      },
      {
        breakpoint: 600,
        options: {
          maxParticles: 50
        }
      },
      {
        breakpoint: 425,
        options: {
          maxParticles: 0 //no particles when this small
        }
      }
    ]
  });*/
});
