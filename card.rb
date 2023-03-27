# ブラックジャックのカードクラス
class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    case rank
    when 'Ace'   then 11
    when 'King'  then 10
    when 'Queen' then 10
    when 'Jack'  then 10
    else rank.to_i
    end
  end
end