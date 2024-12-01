class DayOnePartTwo
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

    prob_arr = sorted_array[0].map do | left_element |
      appears = sorted_array[1].count(left_element)
      left_element * appears
    end

    prob_arr.sum
  end
end
