require 'rspec'
require_relative '../trimmer_decorator'
require_relative '../base_decorator'
require_relative '../nameable'

describe TrimmerDecorator do
  let(:nameable_mock) { double('Nameable', correct_name: 'Sally Davidson Pratt') }
  let(:trimmer_decorator) { TrimmerDecorator.new(nameable_mock) }

  it 'trims the name to the first 10 characters using the wrapped Nameable instance' do
    expect(trimmer_decorator.correct_name).to eq('Sally Davi')
  end
end
