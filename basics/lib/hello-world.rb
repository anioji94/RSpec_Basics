class HelloWorld


	def say_hello
		"Hello World!"
	end

end 

describe HelloWorld do
	# the describe keyword takes either a string or class argument
	# the purpose is to define an "Example Group"
	context "When testing the HelloWorld class" do
		# the context keyword can take a string or class argument
		# the purpose is to enclose tests of a certain type together.
		it "should say 'Hello World' when we call the say_hello method" do
			# the it keyword can take a string or class argument
			# the purpose is to describe a specific behaviour
			hw = HelloWorld.new
			message = hw.say_hello
			expect(message).to eq "Hello World!"
			# the expect keyword is used to define an expectation
			# the to/not_to keyword is used with expect
			# eq is a matcher keyword. more on that later.
		end
	
	end
end 

