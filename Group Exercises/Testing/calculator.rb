class StringCalculator

  def add(nums_string)
    return 0 if nums_string.length == 0
    return nums_string.to_i if nums_string.length == 1
    nums_string.split(",").map(&:to_i).reduce(&:+)
  end
end
