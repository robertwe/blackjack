class BlackjackGame
  DEALER_COUNT = 1

  attr_reader :hands

  def initialize(player_count, shoe_size, dealer)
    @player_count = player_count
    @shoe_size = shoe_size
    @dealer = dealer
    @hands = Array.new(player_count+DEALER_COUNT)
  end

  def start_game
    self
  end

private


end
