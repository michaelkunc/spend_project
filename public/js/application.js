$(document).ready(function() {

  $(".location_container").on("click", "a", function(event){
      event.preventDefault();
      var href = $(this).attr("href");
      var that = this;
      var request = $.ajax({
                      url: href,
                      method: "GET"
      });

      request.done(function(response){
        $(".spend").hide();
        $(that).parent().replaceWith(response);
        $(that).remove();
      });
  });

  $("#new_location").on("click", function(event){
    event.preventDefault();
    var href = $(this).attr("href");
    var that = this;
    var request = $.ajax({
                  url: href,
                  method: "GET"
    });

    request.done(function(response){
      $(".container").prepend(response);
    });
  });




});
