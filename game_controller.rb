require_relative 'deck'
require_relative 'game_view'
require_relative 'card'


class GameController
  def initialize
    @deck = Deck.load('flashcards.txt')
    @view = GameView.new
  end

  def run
    @view.start_message
    while !(@deck.empty?)
      play_round
    end
    @view.end_message
  end

  def play_round
    card = @deck.get_card
    @view.show_definition(card)
    input = gets.chomp

    until card.answer.downcase == input.downcase
      @view.wrong_answer
      input = gets.chomp
    end
    @view.right_answer
  end
end

GameController.new.run
