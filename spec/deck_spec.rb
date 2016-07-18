require_relative '../deck'

describe Deck do
  let(:deck) {Deck.new}
  describe 'instantiation of Deck' do
    it 'is initialized with an empty deck' do
      expect(deck.cards).to eq []
    end
  end

  # describe 'ability to load cards' do
  #   test_deck = Deck.load('../flashcards.txt')
  #   it 'reads from file and creates a deck of cards' do
  #     expect(test_deck).to be_a(Deck)
  #   end
  # end'
  describe 'empty method' do
    it 'returns true if the deck is empty' do
      expect(deck.empty?).to be true
    end

    it 'returns false if the deck has cards' do
      deck.add(Card.new(:definition => "Here is your question", :answer => "Thanks"))
      expect(deck.empty?).to be false
    end
  end

  describe 'add method' do
    it 'adds a card to the cards' do
    deck.add(Card.new(:definition => "Here is your question", :answer => "Thanks"))
    expect(deck.cards[0]).to be_a (Card)
   end
  end

  describe 'get card' do
    it 'returns a card' do
    deck.add(Card.new(:definition => "Here is your question", :answer => "Thanks"))
      expect(deck.get_card).to be_a (Card)
    end

    it 'removes a card' do
    deck.add(Card.new(:definition => "Here is your question", :answer => "Thanks"))
    var = deck.get_card
    expect(deck.empty?).to be true
    end
  end
end
