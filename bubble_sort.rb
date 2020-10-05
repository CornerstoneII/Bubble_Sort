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

# bubble_sort_by

def bubble_sort_by(array)
  # Amount of times bubble_sort is iterated (arr_length)
  arr_length = array.length

  # use yield method
  (arr_length - 1).times do
    (0..(arr_length - 2)).each do |n| # each aray item iterated
      ender = yield array[n], array[n.next]
      array[n], array[n.next] = array[n.next], array[n] if ender.positive?
    end
  end
  # Return array
  array
end

a = ["Yo mah G", "hi", "hello", "ya"]

switch_result = bubble_sort_by(a) do |left, right|
  left.length - right.length
end

puts switch_result