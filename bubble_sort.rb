def bubble_sort(array)
  arr_length = array.length

  loop do
    ender = false

    (arr_length - 1).times do |n|
      if array[n] > array[n + 1]
        array[n], array[n + 1] = array[n + 1], array[n]
        ender = true
      end
    end

    break unless ender
  end

  array
end
