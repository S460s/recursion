def merge_sorted_array(a, b)
  sorted = []

  loop do
    sorted << (a[0] < b[0] ? a.shift : b.shift)
    return sorted + a if b.empty?
    return sorted + b if a.empty?
  end
end

def merge(arr)
  return arr if arr.length < 2

  merge_sorted_array(merge(arr.slice(0, arr.length / 2)), merge(arr.slice(arr.length / 2, arr.length)))
end

p merge [4, 3, 2, 1]
