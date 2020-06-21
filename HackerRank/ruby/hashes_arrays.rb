# Initialize 3 variables here as explained in the problem statement
#Initialize an empty array with the variable name array
array = []
#Initialize an array with exactly one nil element in it with the variable name array_1
array_1 = Array.new(1)
#Initialize an array with exactly two elements with value 10 in it using the variable name array_2.
array_2 = [10, 10]

def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    # arr.at(index) # or
    # arr[index]
    arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    arr[start_pos, length]
end

def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    # Clue : arr[-index]
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    # arr.first
    arr.first
end

def last_element(arr)
    # return the last element of the array
    # arr.last
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end

def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    # push allows one to add an element to the end of the list.
    arr.push(element)

end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    #unshift allows one or more elements to be added at the beginning of the list.
    arr.unshift(element)

end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    #insert allows one to add one or more elements starting from a given index (shifting elements after the given index in the process).
    arr.insert(index,element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, index+1, index+2)
end

def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    #.pop - Delete an element from the end of the array
    arr.pop

end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    #.shift - Delete an element from the beginning of the array
    arr.shift

end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)

end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select {|a| a % 2 != 0 }
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    arr.reject{|a| a % 3 == 0 }
end

def delete_arr(arr)
  # delete all negative elements
    arr.delete_if {|a| a < 0 }
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
    arr.keep_if {|a| a >= 0}
end



# Initialize 3 variables here as explained in the problem statement
empty_hash = Hash.new
default_hash = Hash.new(1)
hackerrank = {"simmy" => 100, "vivmbbs" => 200}


# Using each, each element can be iterated as
#
# user.each do |key, value|
    # some code on individual key, value
# end

# or
#
# user.each do |arr|
    # here arr[0] is the key and arr[1] is the value
# end
# Your task is to use each and iterate through the collection and print the key-value pair in separate lines.

def iter_hash(hash)
    # your code here
    hash.each do |key, value|
        puts key
        puts value
    end
end

# In this challenge, a hash object called hackerrank is already created. You have to add

# A key-value pair [543121, 100] to the hackerrank object using store
# Retain all key-value pairs where keys are Integers ( clue : is_a? Integer )
# Delete all key-value pairs where keys are even-valued.

hackerrank.store(543121, 100)
hackerrank.keep_if {|key, value| key.is_a? Integer}
hackerrank.delete_if {|key, value| key.even?}
