class MemoryParser
  def initialize(input_file)
    @input_file = input_file
  end

  def read_input
    File.read(File.join(__dir__, @input_file))
  end

  def valid_data(input)
    input.scan(/mul\(\d*,\d*\)/)
  end

  def parse_valid_data(input)
    container = []
    input.each { |e| e.scan(/\d*,\d*/) {|p| container << p.split(",").map {|l| l.to_i}}}

    container
  end

  def solve
    first = valid_data(read_input)
    sec = parse_valid_data(first)
    sec.map {|e| e[0]* e[1]}.sum
  end
end
