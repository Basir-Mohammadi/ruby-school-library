require './person'

class Student < Person
  def initialize(age, name = "Unknown", classroom, parent_permission = true)
    super(age: age, name: name, parent_permission: parent_permission)
    @age = age
    @name = name
    @specialization = specialization
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
