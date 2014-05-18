require 'test_helper'
require 'blackjack_game'
require 'dealer'

describe "a new game of blackjack" do
  describe "deal" do
    subject { BlackjackGame.new(1, 12, Dealer) }
  end

end
