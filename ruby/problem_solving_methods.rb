def search_array(list, num)
	location = 0
	list.each do |x|
		break if x == num
	    location+=1
	end
	if location >= list.length
		nil
	else
		location
	end
end
arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)
puts ""
def fib(num)
	fibnbr = 1
	count = 1
	if num <= 0
		return nil
	elsif num == 1
		return [0]
	else
		fibber = [0,1]
		until count >= num-1
			fibber << fibber[count-1].to_i+fibber[count].to_i
			count += 1
		end
	end
	fibber
end
p "fib(6) = #{fib(6)}"
puts ""
p "fib(100) = #{fib(100)}"
puts ""

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  p "Unsorted list: #{list}"
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end
  list
end
p "Sorted List: #{bubble_sort([1,5,2,3,4,1,7,123,5,3,42])}"