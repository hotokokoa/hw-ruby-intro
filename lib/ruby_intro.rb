# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum_up = 0
  for i in 0...arr.size
	  sum_up += arr[i].to_i
  end
  return sum_up
end


def max_2_sum arr
  sum = 0
  if arr.size == 0
  end
  if arr.size == 1
	 sum += arr[0]
  end
  arr.sort! 
  if(arr.size > 1)
    sum = sum + arr[arr.size-1] + arr[arr.size-2]
  end
  return sum;
end

def sum_to_n? arr, n
  if arr.size == 0
    return false
  end
  arr.sort!
  for i in 0...arr.size
	  temp = n-arr[i]
	  for j in i+1...arr.size
		  if temp == arr[j]
			  return true;
		  end
	  end
  end
  return false;

end

# Part 2

def hello(name)
  s = "Hello, " + name
  return s
end


def starts_with_consonant? s
  if(s.size==0)
    return false
  end
  word = s[0]
  r = ['A','E','I','O','U','a','e','i','o','u']
  result = r.include?word
  result = !result
  if (word<'A'||word>'z'||(word<'a'&&word>'Z'))
    result = !result
  end
  return result
end

def binary_multiple_of_4? s
  for i in 0...s.size
    if(s[i]<'0'||s[i]>'9')
      return false
    end
  end
  if ((s.size >= 2 && s[s.size-1] == '0' && s[s.size-2]=='0')||(s.size==1&&s[0]=='0'))
	 return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)  
      if isbn.empty? || price <= 0
        raise(ArgumentError)
      end
      @isbn = isbn
      @price = price
  end
  def isbn= isbn 
    @isbn = isbn
  end
  def price= price
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def price_as_string
    "$%.2f" % self.price
  end 
end