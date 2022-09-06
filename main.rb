require './student'

def main
  student_x = Student.new(age: 9, name: 'JD', classroom: '4th Grade')
  puts "Can student named #{student_x.name} use service?"
  puts "R/ #{student_x.can_use_service?}"
  puts student_x.play_hooky
end

main
