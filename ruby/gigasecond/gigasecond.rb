class Gigasecond
  @gigasecond = 10**9

  def self.from(datetime)
    datetime + @gigasecond
  end
end