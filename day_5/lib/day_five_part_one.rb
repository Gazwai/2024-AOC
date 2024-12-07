class PrintQueue
  def initialize(input, rules)
    @input = File.read(File.join(__dir__,input)).lines.map(&:chomp).map { |line| line.split(",").map(&:to_i)}
    @rules = File.read(File.join(__dir__,rules)).lines.map(&:chomp).map { |line| line.split("|").map(&:to_i)}
  end

  def check_manual(manual)
    @rules.all? do |rule|
      next true if !manual.include?(rule[0]) || !manual.include?(rule[1])
      first_index = manual.find_index(rule[0])
      second_index =  manual.find_index(rule[1])

      first_index
      second_index
      first_index < second_index
    end
  end

  def get_middle_page(manuals)
    manuals.map { |manual| manual[manual.length / 2] }
  end

  def solve
    valid_manuals = @input.map do | manual |
      if check_manual(manual)
        manual
      end
    end

    middle_pages = get_middle_page(valid_manuals.compact)
    middle_pages.sum
  end
end

aoc = PrintQueue.new("./input.txt","./rules.txt")
aoc.solve
