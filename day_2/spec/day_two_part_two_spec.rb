require_relative '../lib/day_two_part_two.rb'

RSpec.describe ReportChecker do
  describe '#solve' do
    it 'solves day one part one' do
      aoc = ReportChecker.new("../spec/test_input.txt")
      expect(aoc.day_two_solve).to eq(4)
    end
  end
end
