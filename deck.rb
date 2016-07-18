require_relative 'card'

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
  end

  def get_card
    @cards.shuffle!
    @cards.pop
  end

  def add(card)
    @cards << card
  end

  def empty?
    @cards.length == 0
  end

  def self.load(filename)
    deck = Deck.new
    File.open(filename).each_line do |row|
        matcher = /(.+)-(.+)/
        card_info = row.match(matcher)
        card = Card.new({:definition => card_info[2], :answer => card_info[1]})
        deck.add(card)
    end
    deck
  end
end
