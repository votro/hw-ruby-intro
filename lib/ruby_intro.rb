# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  end 
  arr.reduce(:+)
end

def max_2_sum(array)
  arr = array.sort
  if array.empty?
    return 0
  elsif array.length == 1
    return array[0]
  end
  res = arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  else
    !!arr.combination(2).detect { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 
    return false
  end
  start = s[0].downcase
  if ( start =~ /[^a-z]/)
    return false
  elsif ( start =~ /[aeiou]/ )
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  i = s.to_i(2)
  if (s =~ /^[^1, 0]/)
    print s
    return false
  elsif i % 4 == 0
    return true
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError.new("Invalid isbn/price")
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    s = "$" + price.to_s
    if s =~ /\$\d+\.\d{2}/
      return s
    elsif s =~ /\$\d+\.\d{1}/
      return s + "0"
    elsif s =~ /\$\d+/
      return s + ".00"
    end
  end
end
