import Masonry from 'masonry-layout'

jQuery = window.jQuery = require("jquery");
$ = window.$ = require("jquery");

// materialze
// require('materialize-css');

$(document).ready(() => {
    $('.parallax').parallax();
    $(".button-collapse").sideNav();
});
