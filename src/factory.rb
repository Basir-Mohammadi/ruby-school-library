require './app'
require './processors'

class Factory < UserPrompt
  def initialize
    super()
    @app = App.new
    @list_processor = ListProcessor.new(@app)
    @create_processor = CreateProcessor.new(@app)
  end

  def run
    options
    prompt
  end

  def process(choice)
    if (1..4).include?(choice)
      @create_processor.process(choice)
    else
      @list_processor.process(choice)
    end
  end

  def separator(char = '-', size = 100)
    puts char * size
  end

  private

  def options
    puts "please select on of the following options by typing the number:\n\n"

    commands = [
      'Create person',
      'Create classroom',
      'Create book',
      'Create rental',
      'List all books',
      'List all people',
      'List all classrooms',
      'List all rentals by person',
      'Quit'
    ]
    list_with_index(commands)
  end
end
