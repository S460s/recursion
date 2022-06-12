def merge_sorted_array(a, b)
  sorted = []

  loop do
    sorted << (a[0] < b[0] ? a.shift : b.shift)
    return sorted + a if b.empty?
    return sorted + b if a.empty?
  end
end

p merge_sorted_array([1, 4, 5, 7], [2, 3, 8, 9])
