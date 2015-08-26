class FizzBuzz
  attr_reader :id

  def convert(num_to_convert)
    result = ""
    if num_to_convert % 3 == 0
      result += "fizz"
    end
    if num_to_convert % 5 == 0
      result += "buzz"
    end

    if result == ""
      num_to_convert
    else
      result
    end
  end

  def set_id(id)
    @id = id
  end

end
