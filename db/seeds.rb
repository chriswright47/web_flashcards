require 'faker'

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, username: Faker::Internet.user_name, password_digest: 'password')
end

30.times do
  Card.create(question: Faker::Company.catch_phrase, answer: Faker::Company.bs, deck_id: rand(10) + 1)
end

10.times do
  Deck.create(name: Faker::Company.bs)
end

5.times do
  Guess.create(round_id: '1', attempt: 'true')
end

5.times do
  Round.create(user_id: '1', deck_id: '1')
end

