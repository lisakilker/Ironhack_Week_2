class StringCalculator

	def add(nums_string)
		return 0 if nums_string.length == 0
		return nums_string.to_i if nums_string.length == 1
		nums_string[0].to_i + nums_string[2].to_i
		# number.each do |num|
		# end
		nums_string[0].to_i + nums_string[2].to_i + nums_string[3].to_i + nums_string[4].to_i
	end

	def multiply(nums_string)
		return nums_string[0].to_i * nums_string[2].to_i
		skip if nums_string[0].to_i * nums_string[2].to_i == 0
	end

	def power(nums_string)
		return nums_string[0].to_i ** nums_string[2].to_i
	end
end


