class XPuzzle
  def initialize(input_file)
    @grid = File.read(File.join(__dir__,input_file)).lines.map(&:chomp).map {|e| e.split("")}
  end

  def solve
    xmas_amount = 0

    @grid.each_with_index do | arr, i |
      arr.each_with_index do | str, j |
        next if check_boundary(i, j)
        next unless str == "A"

        xmas_amount += 1 if check_diagonals(i, j)
      end
    end

    xmas_amount
  end

  private

  def check_diagonals(i, j)
    check = ["M", "S"]

    diagonal_1 = [@grid[i - 1][j - 1], @grid[i + 1][j + 1]].sort == check
    diagonal_2 = [@grid[i - 1][j + 1], @grid[i + 1][j - 1]].sort == check

    diagonal_1 && diagonal_2
  end

  def check_boundary(i,j)
    height = @grid.count
    width = @grid[0].count

    i < 1 || i >= height - 1 || j < 1 || j >= width - 1
  end
end

aoc = XPuzzle.new("./input.txt")
p aoc.solve
