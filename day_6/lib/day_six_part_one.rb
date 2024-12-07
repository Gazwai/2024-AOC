class GuardSteps
  def initialize(input)
    @input = File.read(File.join(__dir__,input)).lines.map(&:chomp)
  end

  def solve
    p @input
  end
end
