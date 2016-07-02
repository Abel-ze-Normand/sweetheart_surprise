def func x, y
  if (x*x + y*y - 1)**3 - x*x*y*y*y  < 0.000001
    return true
  end
end

arr = Array.new

k = 28
k.times do
  arr << Array.new(k, ' ')
end


n = arr.length - 1
for i in 0..(n-1)
  for j in 0..(n-1)
    if func((j-n/2)*(1.2 / (n/2)), (i- n/2)*(1.2 / (n/2)))
      arr[n - i][n - j] = '.'
    end
  end
end

arr.each do |subarr|
  subarr.each do |item|
    print item
  end
  puts
end

puts "I love you so much, my sweetheart"