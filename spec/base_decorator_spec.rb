require 'rspec'
require_relative '../base_decorator'
require_relative '../nameable'

describe BaseDecorator do
  let(:nameable_mock) { double('Nameable', correct_name: 'Sally Pratt') }
  let(:base_decorator) { BaseDecorator.new(nameable_mock) }

  it 'delegates to the wrapped Nameable instance' do
    expect(base_decorator.correct_name).to eq('Sally Pratt')
  end
end
