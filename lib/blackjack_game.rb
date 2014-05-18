class BlackjackGame
  DEALER_COUNT = 1

  attr_reader :hands

  def initialize(player_count, shoe_size, dealer, hands=[])
    @player_count = player_count
    @shoe_size = shoe_size
    @cards = Cards.build_deck(shoe_size)
    @dealer = dealer
    @hands = hands || Array.new(player_count+DEALER_COUNT)
  end

  def self.empty_hands
    [[],[]]
  end

  def play_round
    dealt_hands = @dealer.deal(@hands, @cards)
    new_game = self.next_round(dealt_hands, @cards)
  end

private


end
