require './factory'

def main
  factory = Factory.new

  loop do
    choice = factory.run
    case choice
    when 1..8
      factory.process(choice)
    when 9
      puts 'App is closing...'
      break
    else
      puts 'INVALID OPTION'
    end
    factory.separator
  end
end

main
