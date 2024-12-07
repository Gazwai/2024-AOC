class FixPrintQueue
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

  # Should just check if the page has invalid page before it
  def check_page(manual, page)
    page_index = manual.find_index(page)
    page_rules = @rules.filter {|rule| rule[0] == page}

    return false if page_rules.empty? || page_index == 0

    first_half_of_arr = manual[0...page_index]

    page_rules.any? do |rule|
      first_half_of_arr.include?(rule[1])
    end
  end

  def sort_manual(manual)
    return manual if check_manual(manual)

    first_failure = manual.find do |page|
      check_page(manual, page)
    end

    failing_page_ind = manual.find_index(first_failure)

    manual[failing_page_ind - 1], manual[failing_page_ind] = manual[failing_page_ind], manual[failing_page_ind - 1]

    sort_manual(manual)
  end

  def get_middle_page(manuals)
    manuals.map { |manual| manual[manual.length / 2] }
  end

  def get_invalid_manuals
    @input.map { |manual| manual unless check_manual(manual) }.compact
  end

  def solve
    sorted_manuals = get_invalid_manuals.map {|invalid_manual| sort_manual(invalid_manual)}
    p get_middle_page(sorted_manuals).sum
  end
end

aoc = FixPrintQueue.new("./input.txt","./rules.txt")
aoc.solve
