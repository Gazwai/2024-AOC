class ReportChecker
  def initialize(input_file)
    @input_file = input_file
  end

  def read_input
    File.read(File.join(__dir__, @input_file)).lines.map(&:chomp)
  end

  def to_integer(input)
    input.map {|i| i.split().map {|num| num.to_i}}
  end

  def all_up_or_all_down(num_arr)
    all_increase(num_arr) || all_decrease(num_arr)
  end

  def difference(num_arr)
    chunked_arr = num_arr.each_cons(2).to_a
    chunked_arr.all? {|o| (o[0] - o[1]).abs > 0 && (o[0] - o[1]).abs < 4  }
  end

  def solve
    pop = to_integer(read_input)
    foo = pop.map {|p| difference(p) && all_up_or_all_down(p) }
    p foo.count(true)
  end

  private

  def all_increase(arr)
    arr.each_cons(2).all? { |a, b| a < b }
  end

  def all_decrease(arr)
    arr.each_cons(2).all? { |a, b| a > b }
  end
end
