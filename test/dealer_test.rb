require 'test_helper'
require 'dealer'

describe "a blackjack_dealer" do
  subject { Dealer }
  let(:cards) { 1_000.times.map.with_index {|i| i } }
  let(:hands) { BlackjackGame.empty_hands }

  describe "#deal(hands, cards)" do
    it "returns the resulting hands" do
      dealt_hands = subject.deal(hands, cards)
      dealt_hands[0].count.must_equal 2
    end

    it "must deal 2 cards to the first player" do
      dealt_hand = subject.deal(BlackjackGame.empty_hands, cards)
      dealt_hand[0].count.must_equal 2
    end

    it "doesn't give the first two consecutive cards to the first player" do
      dealt_hand = subject.deal(BlackjackGame.empty_hands, cards)
      (dealt_hand[0][0] + 1).wont_equal dealt_hand[0][1]
    end
  end

  describe "shuffle(cards)" do
    it "must return the cards in a different order" do
      subject.shuffle(cards).wont_equal cards
    end

    it "must return cards, not a nil" do
      subject.shuffle(cards).wont_equal nil
    end
  end
end
