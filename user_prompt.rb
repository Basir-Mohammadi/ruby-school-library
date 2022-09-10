class UserPrompt
  def process(choice)
    raise NotImplementedError
  end

  private

  def prompt(type: :int, prefix: 'Select ', suffix: 'option: ')
    value = nil
    loop do
      print "#{prefix}#{suffix}"
      value = gets.chomp
      if type == :int && value != '..'
        begin
          value = Integer(value)
        rescue ArgumentError
          puts 'Error!! Only numbers are accepted'
          next
        end
      end
      break
    end
    value == '..' ? nil : value
  end

  def nil_prompt(suffix, type = :int)
    prompt(prefix: '', suffix: suffix, type: type)
  end

  def list_with_index(array, sep: '. ', top: 1)
    array.each_with_index { |e, i| puts "#{i + top}#{sep}#{e}" }
  end
end
