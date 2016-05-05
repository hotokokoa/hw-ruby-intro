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
  if s.size == 1 && s[0] != '0'
	 return false
  end
  for i in 0...s.size
	 if s[i].to_i != 0 && s[i].to_i != 1
		return false
	 end
  end
  if s[s.size-1].to_i == 0 && s[s.size-2].to_i == 0
	return true
  end
  return false
end

# Part 3

class BookInStock
   def initialize(isbn, price)
	   if price <= 0 || isbn.size == 0
		   raise ArgumentError, "Error Detected!!"
	   end

	   @isbn = isbn
	   @price = price
   end

   def price_as_string price
	   price = price.to_s
	   location = 0
	   for i in 0...price.size
		   if price[i] == '.'
			   location = price.size - 1 - i
			   break
		   end
	   end

	   if location == 0
		   final = '$' + price.to_s + '.'
	   else
		   final = '$' + price.to_s
	   end

	   for j in 0...2-location
		   final = final + '0'
	   end

	   return final
   end

   def getter
	   return price_as_string(@price)
   end

end

book = BookInStock.new('11-29-88', 20)
puts book.getter