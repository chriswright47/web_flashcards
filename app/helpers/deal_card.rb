helpers do

  def deck
    Deck.find(session[:deck_id])
  end

  def deck_size
    deck.cards.length
  end

  def start_counter
    session[:counter] = 1
  end

  def rand_arr
    session[:rand_arr] = (1..deck.cards.length).to_a.shuffle
  end

  def next_card
    inc_counter
    deck.cards.find(session[:rand_arr][session[:counter] - 1])
  end

  def inc_counter
   session[:counter] += 1
  end

  def reset_counter
    session[:counter] = 0
  end
end