jQuery(function() {
  var shows;
  shows = $('#booking_show_id').html();
  console.log(shows);
  return $('#booking_film_id').change(function() {
    var film, options;
    film = $('#booking_film_id :selected').text();
    options = $(shows).filter("optgroup[label=" + film + "]").html();
    console.log(options);
    if (options) {
      return $('#booking_show_id').html(options);
    } else {
      return $('#booking_show_id').empty();
    }
  });
});