def my_select(collection)
  i = 0 
  new_array = []
  while i < collection.length 
    if !yield(collection[i]) 
      
    else
      new_array[i] = yield(collection[i])
    end
    i += 1 
  end
  new_array
end
