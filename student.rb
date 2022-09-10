require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    self.classroom = (classroom)
  end

  def classroom=(new_classroom)
    @classroom = new_classroom
    new_classroom.students << self unless new_classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
