#Ruby Factorial program 

def fact(n)
  if n == 0
      1
  else
    if n > 0
      n * fact(n-1)
    else 
      puts "no factorial for -ve number"
    end
  end
end

def collatz(n)
  if n == 1
    return 0
  else
    if n % 2 == 0
      return 1 + collatz(n/2)
    else
      return 1 + collatz(3 * n + 1)
    end
  end
end


puts collatz(ARGV[0].to_i)