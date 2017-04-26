#Loop through array of integers and the method should take an integer arguument to search for
#The method should return the index of the inteer or nil if the integer is not present

def search_method(arr, num)
  counter = 0
  while counter <= arr.length do

      if num == arr[counter]
        return counter
      else
        p nil
      end

    counter += 1
  end
end

arr = [42, 89, 23, 1]
p search_method(arr, 1)

#fibonaci num method

def fib(x)
  arr = [0,1,1]

  counter = 3
  index_a = 1
  index_b = 2

  until counter == x
    sum = arr[index_a] + arr[index_b]

    arr.push(sum)

    index_a += 1
    index_b += 1
    counter += 1
  end

return arr

end

p fib(100)
