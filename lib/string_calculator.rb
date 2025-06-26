class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?

    delimiter = /,|\n/
    numbers = input.split(delimiter).map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?

    numbers.sum
  end
end