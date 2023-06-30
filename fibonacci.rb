def fibs(number)
    sequence = []
    a, b = 0, 1
  
    number.times do
      sequence << a
      a, b = b, a + b
    end
  
    sequence
end

def fibs_rec(number)
    return [] if number <= 0
    return [0] if number == 1
    fibs_rec(number - 1) << (fibs_rec(number - 1)[-1] + (fibs_rec(number - 1)[-2] || 1))
end
puts "*** Fibonacci ***"
puts "Using iteration"
result = fibs(8)
p result
puts "Using recursive functions"
result = fibs_rec(8)
p result