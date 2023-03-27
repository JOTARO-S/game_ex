# プレイヤークラス
class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def hit(card)
    @hand << card
  end

  def total
    total = hand.inject(0) { |sum, card| sum + card.value }
    # Aが含まれていて手札の合計が21を超える場合、Aを1にする
    hand.select { |card| card.rank == 'Ace' }.count.times do
      break if total <= 21
      total -= 10
    end
    total
  end
end
