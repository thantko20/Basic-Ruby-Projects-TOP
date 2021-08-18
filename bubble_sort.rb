def bubble_sort(array)
  sorted = true

  array.size.times do
    for i in 0..array.size-2
      if array[i] > array[i+1]
        temp = 0
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
        sorted = false
      end
    end
    break if sorted
  end
  p array
end

bubble_sort([6,5,4,3,2,1]) # [1, 2, 3, 4, 5, 6]
bubble_sort([4,3,78,2,0,2]) # [0, 2, 2, 3, 4, 78]
bubble_sort(['a', 'c', 'b', 'z', 'h']) # ["a", "b", "c", "h", "z"]
bubble_sort(['Michael', 'McGregor', 'Marco', 'Main']) # ["Main", "Marco", "McGregor", "Michael"]