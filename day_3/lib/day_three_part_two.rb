class MemoryParserTwo
  def initialize(input_file)
    @input_file = input_file
  end

  def read_input
    File.read(File.join(__dir__, @input_file))
  end

  def valid_data(input)
     input.scan(/mul\(\d*,\d*\)|do\(\)|don't\(\)/)
  end

  def parse_valid_data(input)
    container = []
    input.each { |e| e.scan(/\d*,\d*|do\(\)|don't\(\)/) {|p| (p == "do()" || p == "don't()") ? container << p : container << p.split(",").map {|e| e.to_i}}}

    container
  end

  def solve
    switch = true
    first = valid_data(read_input)
    sec = parse_valid_data(first)

    container = []

    third = sec.map do |e|
      next switch = true if  e == "do()"
      next switch = false if  e == "don't()"

      switch

      if switch
        container << (e[0]* e[1])
      end
    end

  container.sum
  end
end
