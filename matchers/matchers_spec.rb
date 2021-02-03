# We only need a spec file on this topic

describe "An example of equality Matchers" do 
	
	it "should show how the equality matchers work" do
		a = "test string"
		b = a 

		# the following expectations will all pass
		expect(a).to eq "test string"
		# Passes when actual == expected
		expect(a).to eql "test string"
		# Passes when actual.eql?(expected)
		expect(a).to be b 
		# Passes when actual.equal?(expected)
		expect(a).to equal b
		# Also passes when actual.equal?(expected)
	end 

end 

describe "An example of the comparison Matchers" do 

	it "should show how all the comparison matchers work" do 
		a = 1
		b = 2
		c = 3
		d = 'test string'

		# The following Expectations will all pass
		expect(b).to be > a
		# b is greater than a
		expect(a).to be >= a 
		# a is greater than or equal to a
		expect(a).to be < b 
		# a is less than b
		expect(b).to be <= b 
		# b is equal to be
		expect(c).to be_between(1,3).inclusive 
		# c is between 1 and 3
		expect(b).to be_between(1,3).exclusive 
		# b is between 1 and 3
		expect(d).to match /TEST/i
		# d matches this regexp. although i don't understand why
		# according to rubydocs, /pat/i means ignore the pattern between the slashes
		
	end 

end

# got some extra debugging practice in because i forgot to use the do keyword!