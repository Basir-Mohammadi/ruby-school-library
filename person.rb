require './nameable'
require './rental'

class Person < Nameable
  attr_reader :id, rentals
  attr_accessor :age, :name

  def initialize(age:, name: 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book)
    Rental.new(person: self, book: book)
  end

  # @return [String]
  def correct_name
    @name
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
