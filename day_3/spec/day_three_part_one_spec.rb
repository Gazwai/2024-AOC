require_relative '../lib/day_three_part_one.rb'

RSpec.describe MemoryParser do
  describe '#solve' do
    it 'solves day three part one' do
      aoc = MemoryParser.new("../spec/test_input_part_1.txt")
      expect(aoc.solve).to eq(161)
    end
  end
end
