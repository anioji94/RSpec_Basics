class StringAnalyzer
  def has_vowels?(str)
    !!(str =~ /[aeiou]+/i)
    # uses regexp to test if a string has vowels in it or not
    # fyi '=~' operator is used as a pattern matcher
    # if the string contains the regexp, it will return the index where the pattern lies
  end
end 

