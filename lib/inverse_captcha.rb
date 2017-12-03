class InverseCaptcha

  def self.sum(input, includeBothValues = false)
    sum = 0
    length = input.length
    half_length = length / 2

    if (!includeBothValues) then
      for i in 0..(length - 1)
        val1 = input[i]
        val2 = if (i === length - 1) then input[0] else input[i+1] end
        if (val1 === val2)
          sum = sum + Integer(val1)
        end
      end
    else
      for i in 0..(half_length - 1)
        val1 = input[i]
        val2 = input[i + half_length]
        if (val1 === val2)
          sum = sum + Integer(val1) + Integer(val2)
        end
      end
    end

    sum
  end
end
