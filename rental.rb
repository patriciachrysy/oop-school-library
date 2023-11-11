# the student class
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    @person.rentals << self
    @book.rentals << self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
