require './student'
require './decorators'
require './classroom'
require './book'

def cli_separator(char = '-', size = 50)
  puts char * size
end

def main
  forth_classroom = Classroom.new(label: 'FORTH GRADE')
  student_x = Student.new(age: 9, name: 'JD', classroom: '4th Grade')
  forth_classroom.add_student(student_x)
  forth_classroom.students.each { |s| puts s.classroom.label }
  permission = student_x.can_use_service? ? 'YES' : 'NO'
  puts "Can student named #{student_x.name} use service? (#{permission})"

  cli_separator

  book = Book.new(title: 'Title 1', author: 'Author 1')
  person_ls = Person.new(age: 17, name: 'Gregory')
  rental = Rental.new(person: person_ls, book: book)
  puts "#{rental.date} == #{person_ls.rentals.first.date}"
  person_ls.rentals.each { |r| puts r.book.title }
  book.rentals.each { |r| puts r.person.name }

  cli_separator

  person = Person.new(age: 22, name: 'maximilianus')
  puts "Original name is: #{person.correct_name}"
  titled_person = CapitalizeDecorator.new(person)
  puts "After capitalization, name is: #{titled_person.correct_name}"
  titled_trimmed_person = TrimmerDecorator.new(titled_person)
  puts "After both capitalization & trim, name is: #{titled_trimmed_person.correct_name}"
end

main
