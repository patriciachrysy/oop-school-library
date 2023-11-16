# frozen_string_literal: true

require 'rspec'
require_relative '../classroom'
require_relative '../student'
describe Classroom do
  let(:emma) { Student.new(22, 'Emma Watson') }
  let(:karl) { Student.new(18, 'Karl Meyer') }
  let(:class_b) { Classroom.new('Class B') }
  it 'should have the name Class B' do
    expect(class_b.label).to eq('Class B')
  end
  it 'should initialize the students with an empty array' do
    expect(class_b.students).to be_an(Array)
    expect(class_b.students).to be_empty
  end
  it 'should add Emma and Karl to class B' do
    class_b.add_students(emma)
    class_b.add_students(karl)
    expect(class_b.students.length).to eq(2)
    expect(class_b.students).to include(emma)
    expect(class_b.students).to include(karl)
    expect(emma.classroom).to eq(class_b)
    expect(karl.classroom).to eq(class_b)
  end
end
