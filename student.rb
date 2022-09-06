require './person'

class Student < Person
  def initialize(age:, name:, classroom:, parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)

    self.classroom = (classroom)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
