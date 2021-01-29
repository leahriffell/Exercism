class Acronym
  def self.abbreviate(term)
    split = term.scan(/\b[a-zA-Z]/)
    split.map { |word| word[0].upcase }.join
  end
end