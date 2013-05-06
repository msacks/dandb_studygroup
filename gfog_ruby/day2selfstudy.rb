a = []
i = 1
for i in (1..16) do
  a.push(i)
  i=i+1
end

puts "Printed with each: "
a.each do |j|
  if (j-1).modulo(4) == 0
    b1 = j-1
    b2 = b1+3
    puts "#{a[b1..b2]}"
  end
end

puts "Printed with each_slice: "
(1..16).each_slice(4) do |a| 
    puts "#{a}"
end
