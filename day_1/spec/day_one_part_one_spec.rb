require_relative '../lib/day_one_part_one.rb'

RSpec.describe DayOnePartOne do
  describe '#solve' do
    it 'solves day one part one' do
      aoc = DayOnePartOne.new("../spec/test_input.txt")
      expect(aoc.solve).to eq(11)
    end
  end
end
