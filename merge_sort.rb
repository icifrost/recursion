def merge_sort(array)
    return array if array.length <= 1
  
    mid = array.length / 2
    left = merge_sort(array[0...mid])
    right = merge_sort(array[mid..])
  
    merge(left, right)
end
  
def merge(left, right)
    return left if right.empty?
    return right if left.empty?
  
    if left[0] <= right[0]
      [left[0]] + merge(left[1..], right)
    else
      [right[0]] + merge(left, right[1..])
    end
end
  
array = [8, 4, 2, 9, 5, 1, 6, 3, 7]
result = merge_sort(array)
p result