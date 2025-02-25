class Exercise

  # Replaces words longer than 4 characters in a given string with "marklar" or "Marklar".
  # 
  # * If a word is capitalized, it is replaced with "Marklar".
  # * Otherwise, it is replaced with "marklar".
  #
  # @param str [String] Input string consisting of words separated by spaces. 
  # @return [String] Modified string with substitutions
  def self.marklar(str)
    str.gsub(/\b[A-Za-z]{5,}\b/) do |word|
      word[0] == word[0].upcase ? "Marklar" : "marklar"
    end
  end

  # Computes the sum of even Fibonacci numbers up to nth term. 
  # 
  # * The Fibonacci sequence starts with (1, 1, 2, 3, 5, 8, ...).
  # * Only even numbers are added to the sum. 
  # * If nth < 2, the sum is 0 since there are no even numbers before the second term. 
  #
  # @param nth [Integer] The number of terms to compute
  # @return [Integer] Sum of even Fibonacci numbers before the second term. 
  def self.even_fibonacci(nth)
    a, b, sum = 1, 1, 0
    (nth - 2).times do
      a, b = b, a + b
      sum += b if b.even?
    end
    sum
  end
  
end
