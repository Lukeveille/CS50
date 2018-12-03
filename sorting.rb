length = 0
numbers = []
temp = 0
it = 0

loop do
  puts "How many numbers?"
  length = gets.chomp.to_i; 
  break if length > 0
  puts "That's not a valid number!"
end

length.times do |i|
  numbers << i
end

numbers.shuffle!
print numbers

loop do
  flip = true
  it += 1
  i = 0
  while numbers[i+1]
    if numbers[i] > numbers[i+1]
      temp = numbers[i]
      numbers[i] = numbers[i+1]
      numbers[i+1] = temp
      flip = false
    end
    i += 1
  end

  while numbers[i-1]
    if i > 0 && numbers[i] < numbers[i-1]
      temp = numbers[i]
      numbers[i] = numbers[i-1]
      numbers[i-1] = temp
      flip = false
    end
    i -= 1
  end
  break if flip
end

puts "#{numbers} done in #{it} steps"