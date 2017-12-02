class Checksum

  def self.check(input)
    values = []
    while input.length > 0
      current_row = input.pop.sort
      last_index = current_row.length - 1
      first_val = current_row[0]
      last_val = current_row[last_index]
      diff = last_val - first_val
      values.push(diff)
    end

    if values.length > 0 then values.reduce(:+) else 0 end
  end

  def self.divisible_check(input)
    values = []
    while input.length > 0
      current_row = input.pop.sort.reverse
      low_val = nil
      upper_val = nil
      while upper_val.nil? || current_row.length == 0
        low_val = current_row.pop
        upper_val = current_row.find { |i| i % low_val == 0 }
      end
      remain = upper_val / low_val
      values.push(remain)
    end

    if values.length > 0 then values.reduce(:+) else 0 end
  end
end