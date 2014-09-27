# card = Card.new
class Card
	attr_accessor :front, :back

	def initialize front, back
		@front = front
		@back = back 
	end
end

class Deck
	attr_reader :cards
	def initialize name
	@name = name
	@cards = []
	end

	def << card
		@cards << card
	end
end


card1 = Card.new("cat", "neko")
card2 = Card.new("dog", "inu")

deck = Deck.new("Japanese")
deck << card1
deck << card2

deck.cards.each do |card|
	front = card.front
	back = card.back      

	print "#{front} > "
	guess = gets.chomp

	if guess == back
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}"
	end

end