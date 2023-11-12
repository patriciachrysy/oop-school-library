require 'rspec'
require_relative '../classroom'
require_relative '../student'

describe Student do
  let(:student) { Student.new(22, 'Emma Watson') }
  let(:class_b) { Classroom.new('Class B') }

  it 'should have the name Emma Watson belong to classroom' do
    expect(student.name).to eq('Emma Watson')
    expect(student.classroom).to eq(5)
  end

  it 'should return a funny expression' do
    expect(student.play_hooky).to eq('¯(ツ)/¯')
  end

  it 'should add Emma to class B' do
    student.classroom=(class_b)
    expect(student.classroom.label).to eq("Class B")
    expect(student.classroom.students).to include(student)
  end
end