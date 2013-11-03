$(document).ready(function() {
  $(document).on('submit','#submit_guess', function(event) {
    event.preventDefault();
    var card_answer=document.forms["guess_form"]["answer"].value;
    var check_guess=document.forms["guess_form"]["guess"].value;

    if (check_guess===card_answer) {
      console.log(check_guess===card_answer)
      $('h1').html("Correct");
      $.post('/guess_attempt', {correct: true})
    } else {
      console.log(check_guess===card_answer)
      $('h1').html("Incorrect");
      $.post('/guess_attempt', {correct: false})
    };

    $.get('/game_play', function(data){
      console.log(data)
      $('.game_play_container').replaceWith(data);
    });
  });

  //Start of login test js
  $(document).on('submit','#login_form', function(event) {
    // console.log(event);
    // console.log(document.forms["input"]["username"].value);
    event.preventDefault();

  });
});

