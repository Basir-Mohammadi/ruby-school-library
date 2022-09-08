require './person'

class Student < Person
  def initialize(age:, classroom:, name: 'Unknown', parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @age = age
    @name = name
    @classroom = classroom
  end

  def classroom=(new_classroom)
    @classroom = new_classroom
    new_classroom.students << self unless new_classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
