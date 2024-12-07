require_relative "../lib/day_four_part_two.rb"

RSpec.describe XPuzzle do
  describe '#solve' do
    it 'solves day four part two' do
      aoc = XPuzzle.new('../spec/test_input.txt')
      expect(aoc.solve).to eq(9)
    end
  end
end
