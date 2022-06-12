def fibs(num)
  base_arr = [0, 1]

  (num - base_arr.length).times { base_arr << base_arr[-1] + base_arr[-2] }
  base_arr
end

def fibs_rec(num, sequence = [0, 1])
  (num - 2) <= 0 ? sequence : fibs_rec(num - 1, sequence << sequence[-1] + sequence[-2])
end

p fibs(8)
p fibs_rec(8)
