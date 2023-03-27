# デッキクラス
class Deck
  attr_reader :cards

  SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
  RANKS = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King']

  def initialize
    @cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end

  def deal
    cards.pop
  end
end