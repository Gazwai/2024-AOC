require_relative '../lib/day_five_part_one.rb'

RSpec.describe PrintQueue do
  describe '#solve' do
    it 'solves day five part one' do
      aoc = PrintQueue.new('../spec/test_input.txt','../spec/test_rules.txt')
      expect(aoc.solve).to eq(143)
    end
end

end
