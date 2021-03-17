def bubble_sort(nonsorted)
  i = 0
  while i < nonsorted.length - 1
    j = 0
    while j < nonsorted.length - 1
      check = nonsorted[j] - nonsorted[j + 1]
      nonsorted[j], nonsorted[j + 1] = nonsorted[j + 1], nonsorted[j] if check.positive?
      j += 1
    end
    i += 1
  end
  nonsorted
end

def bubble_sort_by(array)
  sorted = false
  until sorted
    sorted = true
    0.upto(array.length - 2) do |i|
      checker = yield(array[i], array[i + 1])
      if checker.positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end