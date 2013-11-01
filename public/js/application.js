$(document).ready(function() {
  $("#guess_form").on("submit", function(event) {

    event.preventDefault;
    var card_answer=document.forms["guess_form"]["answer"].value;
    var check_guess=document.forms["guess_form"]["guess"].value;

    var data = $(this).serialize();
    console.log(data)

    if (check_guess===card_answer) {
      //show user they were right
      $("h3").append("<h4>You got it right</h4>");
      $.post('/guess_result/correct', function(response) {
        console.log(response);
        alert('stop')
      }) ;
    }
    else {
  //tell user they were wrong
  $("h3").append("<h4>You got it wrong</h4>");
  $.post('/guess_result/wrong');

}

//give user option to start next card
});

});
