require_relative "./spam.rb"
require "rspec"

RSpec.describe CommentList do 
	before :each do 
		@new_comments = CommentList.new 
	end

	describe "#add_comments" do
		it "should get comments and store them in an array" do 
			expect(@new_comments.add_comments("Viagra vigorous solution!")).to eq(["Viagra vigorous solution!"])
		end 
	end

	describe "#has_spam" do 
		it "takes a string, if it contains 'http://' twice, it returns the string plus 8====D SPAM-VIAGRA-ALERT 8====D" do
			expect(@new_comments.has_spam("holahttp://http://", "http://")).to eq("holahttp://http://8====D SPAM-VIAGRA-ALERT 8====D")
		end
	end
end