module FunWithStrings
  def palindrome?
    letters=self.downcase.scan(/\w/)
    letters == letters.reverse
  end
  def count_words
    h = Hash.new(0)
    g = self.downcase.gsub /rs[^a-z0-9]+/i, ''
    g.split.each{ |x| h[x] = h[x]+1}
    h
  end
  def anagram_groups
    self.downcase.split.group_by {|word| word.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
