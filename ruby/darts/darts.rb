class Darts
  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    if @x.abs < 1 && @y.abs < 1
      10
    elsif @x.abs <= 5 && @y.abs <= 5
      5
    elsif @x.abs <= 10 && @y.abs <= 10
      1
    else
      0
    end
  end
end