require './nameable'
require './rental'
# the person class
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unkown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  private

  def of_age?
    @age >= 18
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end
end
