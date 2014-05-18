module Dealer
  extend self

  def shuffle(cards)
    cards.shuffle
  end

  def deal(hands, cards)
    2.times.map {
      hands.map { cards.pop } }
  end
end
