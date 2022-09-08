require './nameable'
require './rental'
require 'date'

class Person < Nameable
  attr_accessor :id, :rentals, :age, :name

  def initialize(age:, name: 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(person: self, date: date, book: book)
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
