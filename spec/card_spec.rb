require_relative '../card'

describe Card do
  let(:card) { Card.new({definition: "a command", answer: "answer"})}
  describe "instantiation of a card" do
    it 'has a readable definition' do
      expect(card.definition).to eq "a command"
    end

    it 'has a readable answer' do
      expect(card.answer).to eq "answer"
    end

    # it 'begins with correctly_answered equal to false' do
    #   expect(card.correctly_answered).to be false
    # end
  end
end
