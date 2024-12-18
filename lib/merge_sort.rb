# frozen_string_literal: true

def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = merge_sort(array.slice(0, middle))
  right = merge_sort(array.slice(middle, array.length))

  merge(left, right)
end

def merge(left, right)
  merged = []

  while !left.empty? && !right.empty?
    merged << (left.first < right.first ? left.shift : right.shift)
  end
  merged.concat(left).concat(right)
end

# p merge_sort([1])
# p "Final: #{merge_sort([2, 1])}"
# p "Final: #{merge_sort([5, 2, 1])}"

# p "Final: #{merge_sort([12, 12, 23, 4, 6, 6, 10, -35, 28])}"