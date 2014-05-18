module Cards
  extend self

  SUITS = %i[hearts clubs diamonds spades]
  RANKS = %i[ace two three four five six seven eight nine ten
             jack queen king]

  Card = Struct.new(:suit, :rank) do; end

  def make_deck(shoe_size=1)
    make_cards*shoe_size
  end

private

  def make_cards
    make_ranks
  end

  def make_ranks
    RANKS.flat_map {|rank| make_suits_for(rank) }
  end

  def make_suits_for(rank)
    SUITS.map {|suit| make_card(suit, rank) }
  end

  def make_card(suit, rank)
    Card.new(suit, rank)
  end

end
