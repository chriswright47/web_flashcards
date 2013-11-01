$(document).ready(function() {
  $("#guess_form").on("submit", function() {
    var card_answer=document.forms["guess_form"]["answer"].value;
    var check_guess=document.forms["guess_form"]["guess"].value;
    if (check_guess===card_answer) {
      //show user they were right
}
else {
  //tell user they were wrong
}
//give user option to start next card


  });

});
