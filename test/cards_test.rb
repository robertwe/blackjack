require 'test_helper'
require 'cards'

describe Cards do
  describe "a standard 52 card deck" do
    subject { Cards.build_deck }

    it "must have 52 cards" do
      subject.count.must_equal 52
    end

    it "must have 13 spades" do
      subject.select {|card| card.suit == :spades }.count.must_equal 13
    end

    it "must have 13 hearts" do
      subject.select {|card| card.suit == :hearts }.count.must_equal 13
    end

    it "must have 4 aces" do
      subject.select {|card| card.rank == :ace }.count.must_equal 4
    end
  end

  describe "a blackjack deck with a shoe size of 33" do
    subject { Cards.build_deck(33) }

    it "must have (52) cards" do
      subject.count.must_equal (52*33)
    end

    it "must have (13*33) spades" do
      subject.select {|card| card.suit == :spades }.count.must_equal (13*33)
    end

    it "must have (13*33) hearts" do
      subject.select {|card| card.suit == :hearts }.count.must_equal (13*33)
    end

    it "must have (4*33) aces" do
      subject.select {|card| card.rank == :ace }.count.must_equal (4*33)
    end
  end
end
