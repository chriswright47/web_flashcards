############## GETS ##########

#login and welcome
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/create_user' do
  erb :create_user
end

#game play, list of decks and performance history
get '/decks' do
  @all_decks = Deck.all
  erb :home
end

#game play, arriving here from erb: home
get '/game_round/:deck_id' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  erb :play
end

#show user how they did on the round
get '/results' do
  erb :results
end

#we need some kind of guess function here
get '/guess_stuff' do
end

############# POSTS ##########

post '/create_user' do
  #update user table with submitted form results
  user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], email: params[:email], password: params[:password])

  if user.authenticate(params[:password_confirmation])
    user.save
    redirect to '/decks'
  else
    @error = "Thank you, Come Again! (Login Fail)"
    erb :index
  end
end

post '/login' do
  user = User.find_by_username(params[:username])
  if user.authenticate(params[:password])
    redirect to '/decks'
  else
    redirect to '/'
  end
end




