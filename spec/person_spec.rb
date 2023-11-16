require 'rspec'
require_relative '../book'
require_relative '../person'

describe Person do
  let(:person) { Person.new(12, 'Sally Pratt', parent_permission: false) }
  let(:unknown_person) { Person.new(36) }
  let(:title) { 'Cinderela' }
  let(:author) { 'Disney' }
  let(:book) { Book.new(title, author) }

  it 'should have the name Sally Pratt and the age 12' do
    expect(person.name).to eq('Sally Pratt')
    expect(person.age).to eq(12)
  end

  it 'should initialize the unknown_person with Unknown name' do
    expect(unknown_person.name).to eq('Unkown')
  end

  it 'should state Sally cannot use the services but unkown can' do
    expect(person.can_use_services?).to eq(false)
    expect(unknown_person.can_use_services?).to eq(true)
  end

  it 'should add rental for Cinderela book to Sally' do
    person.send(:add_rental, '16-11-2023', book)
    expect(person.rentals[0].book).to eq(book)
    expect(person.rentals[0].date).to eq('16-11-2023')
  end

  it 'should return true for Unkown person' do
    expect(unknown_person.send(:of_age?)).to eq(true)
  end

  it 'should find Sally Pratt among the list of persons' do
    expect(Person.all[3].name).to eq('Sally Pratt')
  end

  it 'should return Unkown for the second user' do
    expect(unknown_person.correct_name).to eq('Unkown')
  end
end
