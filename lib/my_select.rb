def my_select(collection)
  i = 0 
  new_array = []
  while i < collection.length 
    if !yield(collection[i]) 
      i += 1
    else
      new_array[i] = yield(collection[i])
      i += 1
    end
  end
  new_array
end


collection = [1, 2, 3, 4]

puts my_select(collection) { |x|
  x == 2  
}

