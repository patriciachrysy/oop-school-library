require './rental'
# the student class
class Book
  attr_accessor :title, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
