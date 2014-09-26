# card = Card.new
class Card
	def initialize
		puts "hello"
	end
end

card1 = Card.new
card2 =

deck = [card1, card2]

deck.each do |card|
	front = card[:front]
	back = card[:back]

	print "#{front} > "
	guess = gets.chomp

	if guess == back
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}"
	end

end