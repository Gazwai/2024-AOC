require_relative "../lib/day_four_part_one.rb"

RSpec.describe WordSearch do
  describe '#solve' do
    it 'solves day four part one' do
      aoc = WordSearch.new('../spec/test_input.txt')
      expect(aoc.solve).to eq(18)
    end
  end
end
