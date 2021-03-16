def bubble_sort(nonsorted)
  i = 0
  while i < nonsorted.length-1 do
    j = 0
    while j < nonsorted.length - 1
      check = nonsorted[j].to_i - nonsorted[j+1].to_i
      nonsorted[j], nonsorted[j+1] = nonsorted[j + 1], nonsorted[j] if check.positive?
      j += 1
    end
    i += 1
  end
  return nonsorted
end

def bubble_sort_by(array)
  sorted = false
  until sorted
    0.upto(array.length - 2) do |i|
      change = 0
      checker = yield(array[i],array[i + 1])
      array[i], array[i + 1] = array[i + 1], array[i] if checker.positive?
      change += 1 if checker.positive?
      sorted=true if change.zero?
    end
  end
  return array
end

puts "Sorted by array: #{bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length} }"

puts "Sorted array: #{bubble_sort([5, 5, 6, 2, 1])}"
