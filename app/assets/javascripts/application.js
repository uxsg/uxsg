// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation/foundation
//= require foundation/foundation.alert
//= require foundation/foundation.offcanvas
//= require foundation/foundation.reveal
//= require foundation/foundation.tab
//= require foundation/foundation.topbar
//= require turbolinks
//= require_tree .

var initializePage = function() {
  $(document).foundation();

  $('.left-off-canvas-toggle').on('click', function() {
    $('.left-off-canvas-menu > .off-canvas-list').css('top', $(window).scrollTop() + 'px');
  });
}

$(document).ready(initializePage);
$(document).on('page:change', initializePage);
