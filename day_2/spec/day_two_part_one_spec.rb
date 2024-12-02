require_relative '../lib/day_two_part_one.rb'

RSpec.describe ReportChecker do
  describe '#solve' do
    it 'solves day one part one' do
      aoc = ReportChecker.new("../spec/test_input.txt")
      expect(aoc.solve).to eq(2)
    end
  end
end
