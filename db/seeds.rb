require 'faker'

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: 'password')
end

# 30.times do
#  Card.create(question: Faker::Company.catch_phrase, answer: Faker::Company.bs, deck_id: rand(10) + 1)
# end

# 10.times do
#   Deck.create(name: Faker::Company.bs)
# end

# 5.times do
#   Guess.create(round_id: '1', attempt: 'true')
# end

# 5.times do
#   Round.create(user_id: '1', deck_id: '1')
# end

deck1 = Deck.create(name: "Get your Git on")
deck1.cards << Card.create(question: "If you're starting to track an existing project in Git, you need to go to the project's directory and type: ", answer: "git init")
deck1.cards << Card.create(question: "If you want to get a copy of an existing Git repository, the command you need is: ", answer: "git clone")
deck1.cards << Card.create(question: "The main tool you use to determine which files are in which state is: ", answer: "git status")
deck1.cards << Card.create(question: "In order to begin tracking a new file, you use the command ", answer: "git add")
deck1.cards << Card.create(question: "If you want to know exactly what you changed, not just which files were changed, 'git status' is not enough. You want to use: ", answer: "git diff")
deck1.cards << Card.create(question: "If you have cloned a repository with an existing commit history, and you want to view that history, use the command", answer: "git log")
deck1.cards << Card.create(question: "If you want to make the 'git log' results look a little bit more readable, you can add options to your command. If you want to see the history of each commit on one line, you would issue the command: ", answer: "git log --pretty=oneline")
deck1.cards << Card.create(question: "If you committed to early, and forgot to add some files or want to edit the commit message you used, and you want to try and re-do what you've done, you would issue the command: ", answer: "git commit --amend")
deck1.cards << Card.create(question: "Git knows what branch you're currently on because it keeps a special pointer called: ", answer: "HEAD")
deck1.cards << Card.create(question: "To switch to an existing branch called 'foo', you run which command: ", answer: "git checkout foo")
deck1.cards << Card.create(question: "To switch back to the master branch, you run which command: ", answer: "git checkout master")
deck1.cards << Card.create(question: "If you want to delete a branch named 'bar', use the command: ", answer: "git branch -d bar")

deck2 = Deck.create(name: "jQuery selectors pro")
deck2.cards << Card.create(question: "What JQuery selector would you use to find every EVEN row of a table (use single quotes in your answer):", answer: "$(' tr:even')")
deck2.cards << Card.create(question: "What JQuery selector would you use to find the last paragraph on a page (use single quotes in your answer):", answer: "$('p:last')")
deck2.cards << Card.create(question: "What JQuery selector would you use to find every <a> tag on a page, EXCEPT ones with a class of 'navButton' (use single quotes in your answer):", answer: "$('a:not(.navButton)')")
deck2.cards << Card.create(question: "What JQuery selector would you use to find every <li> tag on a page, BUT ONLY if they have an <a> tag INSIDE them (use single quotes in your answer):", answer: "$('li:has(a)')")
deck2.cards << Card.create(question: "What JQuery selector would you use to find every link that says 'Click Me!' (use single quotes in your answer):", answer: "$('a:contains(Click Me!')")
deck2.cards << Card.create(question: "What JQuery selector and function would you use to find all hidden 'div' tags, and then show them (use single quotes in your answer, don't add the closing semicolon):", answer: "$('div:hidden').show()")
deck2.cards << Card.create(question: "What JQuery selector and function would you use to select all images in a <div> tag  with an ID of 'slideshow', and then hide those images (use single quotes in your answer, and don't add the closing semicolon):", answer: "$('#slideshow img').hide()")
deck2.cards << Card.create(question: "What JQuery selector and functions would you use to select a <div> tag with an ID of 'popUp', and change it so that it includes the following three things: one--set the height and width of the <div> to 300; two--add text inside the <div> that says 'Hi!', and; three-make it fade into view using a value of 1000 (use single quotes in your answer, and don't add the closing semicolon):", answer: "$('#popUp').width(300).height(300).text('Hi!').fadeIn(1000)")
