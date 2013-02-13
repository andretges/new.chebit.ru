$(function() {
  $('#conteiter-home').imagesLoaded(heightTwitter);
});

function heightTwitter() {
  var max_height = $("#conteiter-home").height();
  $("#twitt-height").css("min-height", max_height+'px');
}