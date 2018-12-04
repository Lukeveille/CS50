# initialize
length = 0
numbers = []
temp = 0

# shuffler
loop do
  puts "How many numbers?"
  length = gets.chomp.to_i; 
  break if length > 0
  puts "That's not a valid number!"
end
length.times do |i|
  numbers << i
end

# selection sort
numbers.shuffle!
it = 0

for i in 0..numbers.length
  for j in (i+1)..numbers.length
    it += 1
    if numbers[j-1] < numbers[i-1]
      min = numbers[j-1]
      numbers[j-1] = numbers[i-1]
      numbers[i-1] = min
    end
  end
end

puts "selection sort done in #{it} steps"

# bubble sort
numbers.shuffle!
it = 0
j = 0

loop do
  flip = true
  i = 0
  while numbers[i+1+j]
    it += 1
    if numbers[i] > numbers[i+1]
      temp = numbers[i]
      numbers[i] = numbers[i+1]
      numbers[i+1] = temp
      flip = false
    end
    i += 1
  end
  j += 1
  break if flip
end

puts "bubble sort done in #{it} steps"

# cocktail sort
numbers.shuffle!
it = 0
j = 0

loop do
  flip = true
  i = 0
  while numbers[i+1+j]
    it += 1
    if numbers[i] > numbers[i+1]
      temp = numbers[i]
      numbers[i] = numbers[i+1]
      numbers[i+1] = temp
      flip = false
    end
    i += 1
  end

  break if flip
  
  while i > 0 + j
    it += 1
    if i > 0 && numbers[i] < numbers[i-1]
      temp = numbers[i]
      numbers[i] = numbers[i-1]
      numbers[i-1] = temp
      flip = false
    end
    i -= 1
  end
  j += 1
end

puts "cocktail sort done in #{it} steps"
