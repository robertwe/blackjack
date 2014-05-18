require 'test_helper'
require 'dealer'

describe "a blackjack_dealer" do
  subject { Dealer }

  describe "deal_soft_hand(hands_count)" do
    it "must deal 2 cards to the first player" do
      deal = subject.deal_soft_hand(1)
      deal.hands[1].count.must_equal 2
   end
  end

  describe "shuffle(cards)" do
    let(:cards) { [1,2,3,4,5] }
    it "must return the cards in a different order" do
      subject.shuffle(cards).wont_equal cards
    end

    it "must return cards, not a nil" do
      subject.shuffle(cards).wont_equal nil
    end
  end
end
