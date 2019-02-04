# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0, :+)
end

def max_2_sum arr
  largestA = -99999
  largestB = -99999
  
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.each do |x|
      if x > largestA
        largestB = largestA
        largestA = x
      elsif x > largestB
        largestB = x
      end
    end    
    return largestA + largestB
  end
end


def sum_to_n? arr, n
    !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end


# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s

  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end


def binary_multiple_of_4? s
  puts s
  if ( s =~ /^[10]*00$/ )
    return true
  elsif s == '0'
    return true
  else
    return false
  end

end



# Part 3

class BookInStock
  attr_reader :isbn
  attr_reader :price
  
  def initialize(isbn,price)
    if isbn.empty? || price <= 0.0
      raise ArgumentError, "somethings wrong"
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price) 
    @price = price
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
end



