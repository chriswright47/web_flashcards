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
get '/round_start/:deck_id' do
  session[:counter] = 0
  redirect '/game_play'
end

get '/game_play' do
  if session[:counter] < deck.cards.length
    @card = next_card
  else
    reset_counter
    redirect '/results'
  end
  erb :play
end


get '/results' do
  erb :result
end

#show user how they did on the round
get '/results' do
  erb :results
end

get '/logout' do
  session.clear
  redirect '/'
end

#we need some kind of guess function here
get '/guess_stuff' do
end

get '/next' do

  end

get '/check_answer/:result' do
  @result = params[:result]
  erb :_check_answer
end

############# POSTS ##########

post '/create_user' do
  #update user table with submitted form results

  user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], email: params[:email], password: params[:password])
  if user.valid?
    if user.authenticate(params[:password_confirmation])
      user.save
      session[:user_id] = user.id
      redirect to '/decks'
    else
      @error = "Thank you, Come Again! (Login Fail)"
      erb :create_user
    end
  else
    @error = "Thank you, Come Again! (Login Fail)"
    erb :create_user
  end
end

post '/login' do
  user = User.find_by_username(params[:username])
  if user
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/decks'
    else
      redirect to '/'
    end
  else
    redirect to '/'
  end
end

post '/guess_attempt' do
  result = params[:guess] == params[:answer]
  Guess.create(attempt: result)
  redirect "/check_answer/#{result}"
end




