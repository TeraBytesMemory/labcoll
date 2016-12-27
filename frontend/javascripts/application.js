import Masonry from 'masonry-layout'

jQuery = window.jQuery = require("jquery");
$ = window.$ = require("jquery");
require("jquery-ujs");

// materialze
// require('materialize-css');

$(document).ready(() => {
    $('.parallax').parallax();
    $(".button-collapse").sideNav();
    $('.modal').modal();
});
