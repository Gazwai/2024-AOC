require 'day_one'

RSpec.describe Calculator do
  describe '#add' do
    it 'adds two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 3)).to eq(5)
    end
  end
end
