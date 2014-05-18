module Cards
  extend self

  SUITS = %i[hearts clubs diamonds spades]
  RANKS = %i[two three four five six seven eight nine ten
             jack queen king ace]

  Card = Struct.new(:suit, :rank) do; end

  def build_deck(shoe_size=1)
    make_cards*shoe_size
  end

private

  def make_cards
    RANKS.flat_map {|rank| make_suits_for(rank) }
  end

  def make_suits_for(rank)
    SUITS.map {|suit| make_card(suit, rank) }
  end

  def make_card(suit, rank)
    Card.new(suit, rank)
  end

end
