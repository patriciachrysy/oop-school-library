# frozen_string_literal: true

require 'rspec'
require_relative '../rental'
require_relative '../book'
require_relative '../person'
describe Rental do
  let(:title) { 'Cinderela' }
  let(:author) { 'Disney' }
  let(:book) { Book.new(title, author) }
  let(:rental_date) { '13-10-2023' }
  let(:person) { Person.new(12, 'Sally Pratt') }
  let(:rental) { Rental.new(rental_date, person, book) }
  it 'should have date, person and book as datas' do
    expect(rental.date).to eq(rental_date)
    expect(rental.person).to eq(person)
    expect(rental.book).to eq(book)
  end
  it 'should add this rental to Sallys' do
    expect(person.rentals).to include(rental)
  end
  it 'should add this rental to Cinderella books' do
    expect(book.rentals).to include(rental)
  end
end
