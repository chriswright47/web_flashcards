helpers do

  def deck
    Deck.first
  end

  def deck_size
    deck.cards.length
  end

  def start_counter
    session[:counter] = 1
  end

  def next_card
    inc_counter
    deck.cards.find(session[:counter])
  end

  def inc_counter
   session[:counter] += 1
  end

  def reset_counter
    session[:counter] = 0
  end
end