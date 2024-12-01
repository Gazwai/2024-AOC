class DayOnePartOne
  def initialize(input_file)
    @input_file = input_file
  end

  def read_input
    File.read(File.join(__dir__, @input_file)).lines.map(&:chomp)
  end

  def sort(input)
    input.map {|i| split_into_integer(i)}.transpose.map {|arr| arr.sort}
  end

  def split_into_integer(two_numbered_string)
    two_numbered_string.split().map {|num| num.to_i }
  end

  def difference(two_numbers)
    (two_numbers[0] - two_numbers[1]).abs
  end


  def solve
    sorted_array = sort(read_input)

    zipped = sorted_array[0].zip(sorted_array[1])

    all_differences = zipped.map do | two_numbered_array|
      difference(two_numbered_array)
    end

    all_differences.sum
  end
end
