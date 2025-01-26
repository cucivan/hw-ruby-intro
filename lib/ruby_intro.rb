# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |item|
    sum += item
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort { |a, b| b <=> a}
    return arr[0] + arr[1]
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.empty?
    false
  end
  1.upto(arr.size - 1).each do |i|
    (i + 1).upto(arr.size - 1).each do |j|
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
      
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.empty? || (/^[a-z]/i =~ s) == nil
    return false
  end
  if (/^[aeiou]/i =~ s) == nil
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if (/^[01]+$/ =~ s) != nil && ((/00$/ =~ s) != nil || s == "0")
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price
  
  def price_as_string()
    "$%.2f" % @price
  end
end

hello('Dan')