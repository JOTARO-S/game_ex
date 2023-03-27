# ゲームクラス
class Blackjack
  attr_reader :player, :dealer, :deck

  def initialize
    @player = Player.new('Player')
    @dealer = Player.new('Dealer')
    @deck = Deck.new
  end

  def play
    2.times do
      player.hit(deck.deal)
      dealer.hit(deck.deal)
    end

    display_hands

    if player.total == 21
      puts 'Blackjack! You win!'
      return
    end

    while player.total < 21
      print 'Do you want to hit or stay? '
      input = gets.chomp.downcase
      if !['hit', 'stay'].include?(input)
        puts 'Error: you must enter hit or stay'
        next
      end

      if input == 'stay'
        break
      end

      new_card = deck.deal
      puts "Dealing card to player: #{new_card.rank} of #{new_card.suit}"
      player.hit(new_card)
      display_hands

      if player.total > 21
        puts 'Busted'
      end
    end
  end
end