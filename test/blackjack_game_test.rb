require 'test_helper'
require 'blackjack_game'
require 'dealer'

describe "a game of blackjack" do
  describe "new(player_count, shoe_size, dealer)" do
    subject { BlackjackGame.new(1, 12, Dealer) }

    describe "start_game" do
      describe "returns a state of the game" do
        it "has a hand for the dealer and the player" do
          game = subject.start_game
          game.hands.count.must_equal 1+1
        end

        it "each hand must have 2 cards" do
          hands = subject.hands(hands)
          hands[-1].count.must_equal 2
        end
      end
    end
  end

end
