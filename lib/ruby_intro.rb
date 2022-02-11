# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return arr.permutation(2).any? { |a,b| a+b==n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # /i - case insensitive
  # \A - starting string
  # ^(caret) - invert character properties
  
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return (s == '0')||(/^[01]*(00)$/ =~ s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN number is empty string") if isbn.size == 0
    raise ArgumentError.new("Price is less than or equal to zero.") if price <= 0

    @isbn = isbn
    @price = Float(price)
  end

  def price_as_string
    # "Price: #{@price}"
    return "$%.2f" %price
  end

end
