require 'rspec'
require_relative '../teacher'
describe Teacher do
  let(:teacher) { Teacher.new(45, 'Maths', 'Tim Edgard') }
  it 'should have the name Tim Edgard, age 45 and specialize in maths' do
    expect(teacher.name).to eq('Tim Edgard')
    expect(teacher.age).to eq(45)
    expect(teacher.specialization).to eq('Maths')
  end
  it 'should return true' do
    expect(teacher.can_use_services?).to eq(true)
  end
end
