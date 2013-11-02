$(document).ready(function() {
  $('.submit_guess').on('submit', function(event) {
    event.preventDefault();
    var card_answer=document.forms["guess_form"]["answer"].value;
    var check_guess=document.forms["guess_form"]["guess"].value;

    if (check_guess===card_answer) {
      $('h1').html("Correct");
      $.post('/guess_attempt', {correct: true}, function(response){
      });
    } else {
      $('h1').html("Incorrect");
      $.post('/guess_attempt', {correct: false}, function(response){
      });
    };

    $.get('/game_play', function(data){
      $('span').html(data);
    });

  });
});

