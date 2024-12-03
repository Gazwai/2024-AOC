require_relative '../lib/day_three_part_two.rb'

RSpec.describe MemoryParserTwo do
  describe '#solve' do
    it 'solves day three part one' do
      aoc = MemoryParserTwo.new("../spec/test_input_part_2.txt")
      expect(aoc.solve).to eq(48)
    end
  end
end
