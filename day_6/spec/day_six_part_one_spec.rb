require_relative '../lib/day_six_part_one.rb'

RSpec.describe GuardSteps do
  describe '#solve' do
    it 'solves day six part one' do
      aoc = GuardSteps.new('../spec/test_input.txt')
      expect(aoc).to eq(41)
    end
  end
end
