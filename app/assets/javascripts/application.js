// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery
//= require cocoon

$(window).load(function() {
  $('select').material_select();
  $('ul.tabs').tabs();
  $('#performance-holder').material_select();

  //   $(function(){
  //   $('.showevent').mouseenter(function(e){
  //     e.preventDefault()
  //     var url = $(e.target).attr("href");
  //     $.ajax({
  //       url: url,
  //     }).done(function(response){
  //     var event_id = $(this).attr("url").split('').pop();
  //     var event = $("#event" + event_id);
  //       event.append(response);
  //    });
  //   })
  //   $('.showevent').mouseleave(function(){
  //       $(".preview-holder").children().remove();
  //   });
  // });

$('.showevent').hover(function() {
  var id = this.id
    $('#hidden'+id).show();
}, function() {
  var id = this.id
  $('#hidden'+id).hide();
});
});


