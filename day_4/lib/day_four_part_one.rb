WORD = {X: 1, M: 2, A: 3, S: 4}

class WordSearch
  def initialize(input_file)
    @grid = File.read(File.join(__dir__,input_file)).lines.map(&:chomp).map {|e| e.split("")}
  end

  def solve
    xmas_amount = 0
    @grid.each_with_index do | arr, i |
      arr.each_with_index do | str, j |
        next unless WORD[str.to_sym] == 1

        count = 2

        xmas_amount += check_directions(i, j, count)
      end
    end

    p xmas_amount
  end

  private

  def top(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    top(i - 1, j, count)
  end

  def bottom(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    bottom(i + 1, j, count)
  end

  def left(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    left(i, j - 1, count)
  end

  def right(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j )
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    right(i, j + 1, count)
  end

  def top_left(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    top_left(i - 1 , j - 1, count)
  end

  def top_right(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    top_right(i - 1, j + 1, count)
  end

  def bottom_left(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    bottom_left(i + 1, j - 1, count)
  end

  def bottom_right(i, j, count)
    return 1 if count == 5
    return 0 if check_boundary(i, j)
    return 0 if WORD[@grid[i][j].to_sym] != count

    count += 1
    bottom_right(i + 1, j + 1, count)
  end

  def check_directions(i, j, counter)
    xmas_found = 0

    xmas_found += top(i - 1, j, counter)
    xmas_found += bottom(i + 1, j, counter)
    xmas_found += left(i, j - 1, counter)
    xmas_found += right(i, j + 1, counter)
    xmas_found += top_left(i - 1, j - 1, counter)
    xmas_found += top_right(i - 1, j + 1, counter)
    xmas_found += bottom_left(i + 1, j - 1, counter)
    xmas_found += bottom_right(i + 1 , j + 1, counter)

    xmas_found
  end

  def check_boundary(i,j)
    height = @grid.count
    width = @grid[0].count

    i < 0 || i >= height || j < 0 || j >= width
  end
end

aoc = WordSearch.new("./input.txt")
aoc.solve
