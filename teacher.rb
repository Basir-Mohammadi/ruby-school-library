require './person'

class Teacher < Person
  def initialize(age, name, specialization, parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @age = age
    @name = name
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
