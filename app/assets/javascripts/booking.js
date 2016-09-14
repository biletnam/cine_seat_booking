jQuery(function() {
  var shows;
  $('#booking_show_id').parent().hide();
  shows = $('#booking_show_id').html();
  console.log(shows);
  return $('#booking_film_id').change(function() {
    var film, escaped_country, options;
    film = $('#booking_film_id :selected').text();
    escaped_film = film.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(shows).filter("optgroup[label=" + escaped_film + "]").html();
    console.log(options);
    if (options) {
      $('#booking_show_id').html(options);
      return $('#booking_show_id').parent().show();
    } else {
      $('#booking_show_id').empty();
      return $('#booking_show_id').parent().hide();
    }
  });
});