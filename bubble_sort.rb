# Start method called bubble_sort
def bubble_sort(array)
  # Amount of times bubble_sort is iterated (arr_length)
  arr_length = array.length

  loop do
    # Ender ends loop when (see break unless = line 17)
    ender = false
    # Switch cases and set ender = true
    (arr_length - 1).times do |n|
      if array[n] > array[n.next]
        array[n], array[n.next] = array[n.next], array[n]
        ender = true
      end
    end

    break unless ender
  end
  # Return array
  array
end
