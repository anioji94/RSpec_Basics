require 'string_analyzer'

describe StringAnalyzer do
sa = StringAnalyzer.new
# just refactored so that i don't have to repeat the above line
# good to know i can just reuse this variable
  context "With valid input" do

    it "should detect when a string contains vowels" do
      test_string = 'uuu'
      # creates a variable which can be reassigned at every new it statement
      expect(sa.has_vowels? test_string).to be true
      # passes test_string as an argument into the has_vowels? method
    end 

    it "should detect when a string doesn't contain vowels" do   
      test_string = 'bcdfg'
      expect(sa.has_vowels? test_string).to be false
    end

    # I'm now going to make a few more it statements to practice.
    it "should detect when one vowel between consonants" do      
      test_string = 'car'
      expect(sa.has_vowels? test_string).to be true 
    end 

    it "should return false if string is empty" do   
      test_string = ''
      expect(sa.has_vowels? test_string).to be false
    end 
    
  end
end
