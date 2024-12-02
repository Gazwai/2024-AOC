require_relative '../lib/day_one_part_two.rb'

RSpec.describe DayOnePartTwo do
  describe '#solve' do
    it 'solves day one part two' do
      aoc = DayOnePartTwo.new("../spec/test_input.txt")
      expect(aoc.solve).to eq(31)
    end
  end
end
