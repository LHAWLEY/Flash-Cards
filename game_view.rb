require_relative 'card'

class GameView

  def start_message
    puts "Welcome to Ruby flash cards. To play, just enter the correct term for each definition. Go!\n\n"
  end

  def end_message
    puts "Congratulations. Persistence is key (or is it value?)."
  end

  def show_definition(card)
    puts "Definition"
    puts card.definition
    puts ""
    print "Guess: "
  end

  def wrong_answer
    puts "Incorrect, try again :(\n\n"
    print "Guess: "
  end

  def right_answer
    puts "Correct!!!!!!!!!!\n\n"
  end
end
