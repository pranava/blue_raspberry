// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  $('.vertically-centered').each(function(index, element) {
    var parent = $(element).parent();
    var height = $(element).height();
    var parentHeight = $(parent).height();

    var margin = (parentHeight / 2) - (height / 2);
    $(element).css('margin-top', margin);
    $(element).css('margin-bottom', margin);
  });
});