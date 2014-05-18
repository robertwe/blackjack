require 'test_helper'
require 'dealer'

describe "a blackjack_dealer" do
  subject { Dealer }
  let(:cards) { 1_000.times.map.with_index {|i| i } }

  describe "deal_soft_hand(hands_count)" do
    it "must deal two hands" do
      deal = subject.deal_soft_hand([[], []], cards)
      deal.count.must_equal 2
    end

    it "must deal 2 cards to the first player" do
      deal = subject.deal_soft_hand([[], []], cards)
      deal[0].count.must_equal 2
    end

    it "doesn't give the first two consecutive cards to the first player" do
      deal = subject.deal_soft_hand([[], []], cards)
      (deal[0][0] + 1).wont_equal deal[0][1]
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
