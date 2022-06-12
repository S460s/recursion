def merge_sorted_array(a, b)
  sorted = []

  loop do
    sorted << (a.first < b.first ? a.shift : b.shift)
    return sorted + a if b.empty?
    return sorted + b if a.empty?
  end
end

def merge(arr)
  return arr if arr.length < 2

  mid = arr.length / 2
  left = arr.slice(0, mid)
  right = arr.slice(mid, arr.length)

  merge_sorted_array(merge(left), merge(right))
end

p merge [4, 3, 2, 1, 1]
