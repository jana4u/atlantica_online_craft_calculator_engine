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
//= require twitter/bootstrap

jQuery(function($) {
  $(".craft-calculator form[data-remote=true]")
    .bind("ajax:before", function() {
      $('#error').html("");
      $("#ajax-loader").show();
    })

    .bind("ajax:failure", function(event, xhr, status, error) {
      $('#error').html("Server Error - " + xhr.status);
    })

    .bind("ajax:complete", function() {
      $("#ajax-loader").hide();
    });

  $(".craft-calculator select").change(function() {
    $(this).closest("form").submit();
  });
});
