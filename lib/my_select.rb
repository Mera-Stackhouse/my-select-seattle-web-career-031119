def my_select(collection)
  i = 0 
  new_array = []
  while i < collection.length 
    if !yield(collection[i]) 
      i += 1
    else
      new_array << collection[i]
      i += 1
    end
  end
  new_array
end

