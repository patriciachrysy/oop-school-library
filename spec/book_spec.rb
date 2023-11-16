# frozen_string_literal: true

require 'rspec'
require_relative '../book'
require_relative '../person'

describe Book do
  let(:title) { 'Cinderela' }
  let(:author) { 'Disney' }
  let(:book) { Book.new(title, author) }
  let(:rental_date_one) { '13-10-2023' }
  let(:rental_date_two) { '20-12-2022' }
  let(:person) { Person.new(12, 'Sally Pratt') }
  let(:unknownPerson) { Person.new(36) }

  it 'should have the title Cinderela' do
    expect(book.title).to eq(title)
  end

  it 'should have the author Disney' do
    expect(book.author).to eq(author)
  end

  it 'should initialize rentals as an empty array' do
    expect(book.rentals).to be_an(Array)
    expect(book.rentals).to be_empty
  end

  it 'should add two rentals for the book' do
    book.add_rental(rental_date_one, unknownPerson)
    book.add_rental(rental_date_two, person)
    expect(book.rentals.length).to eq(2)
  end

  it 'should find Cinderela book among the list of books' do
    expect(Book.all[0].title).to eq('Cinderela')
  end
end
