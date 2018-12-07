# initialize
length = 0
initials = []
temp = 0

# shuffler
loop do
  puts "How many numbers?"
  length = gets.chomp.to_i; 
  break if length > 0
  puts "That's not a valid number!"
end
length.times do |i|
  initials << i
end
initials.shuffle!
print "#{initials}\n"

# selection sort
numbers = initials.dup
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
numbers = initials.dup
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
numbers = initials.dup
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

# insertion sort

# merge sort
numbers = initials.dup

mergersort(numbers)

def mergesort(array)
  return array if array.length == 1
  middle = array.length / 2
  merge mergesort(array[0...middle]), mergesort(array[middle..-1])
end

def merge(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

puts "cocktail sort done in #{it} steps"
