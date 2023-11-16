require 'rspec'
require_relative '../nameable'

describe Nameable do
  let(:nameable_instance) { Nameable.new }

  it 'raises NotImplementedError' do
    expect { nameable_instance.correct_name }.to raise_error(NotImplementedError)
  end
end
