require_relative '../lib/day_five_part_two.rb'

RSpec.describe FixPrintQueue do
  describe '#solve' do
    it 'solves day five part two' do
      aoc = FixPrintQueue.new('../spec/test_input.txt','../spec/test_rules.txt')
      expect(aoc.solve).to eq(123)
    end
  end
end
