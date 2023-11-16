require 'rspec'
require_relative '../capitalize_decorator'
require_relative '../base_decorator'
require_relative '../nameable'

describe CapitalizeDecorator do
  let(:nameable_mock) { double('Nameable', correct_name: 'sally pratt') }
  let(:capitalize_decorator) { CapitalizeDecorator.new(nameable_mock) }

  it 'capitalizes the name using the wrapped Nameable instance' do
    expect(capitalize_decorator.correct_name).to eq('Sally pratt')
  end
end
