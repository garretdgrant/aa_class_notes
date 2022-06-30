#this function takes in a number, n, and 
# sums all number to n

def iter_sum(n) 
    count = 0
    (0..n).each do |num|
        count += num
    end
    count
end

# p iter_sum(2)
# p iter_sum(7)
# p iter_sum(100)

# What is n in its most simple form
# We want a number back, n = 1 or n = 0
def rec_sum(n) 
    return 1 if n == 1 #here is my base case
    # We need to work our way down to the base case
    n  + rec_sum(n-1)
end

def rec_reverse(str)
    return str if str.length == 1 #Base Case
    rec_reverse(str[1..-1]) + str[0] #recurseive call
end

def iter_reverse(str)
    new_str = ""
    parts = str.split("")
    parts.reverse_each do |char|
        new_str += char
    end
    new_str
end

#Wants the 4th number in the fib sequence
def  fibs(n)
    #We have two base cases here.
    return 0 if n == 1
    return 1 if n == 2
    fibs(n-1) + fibs(n-2)
end

#Array of nth fibs
def all_fibs(n)
    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2
    
    

    all_fibs(n-1) << all_fibs(n-1)[-1] + all_fibs(n-1)[-2]
    #let n = 3 ([0,1] << 1 + 0)
end


#now with memoization
def fast_all_fibs(n)
    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2
    
    
    var = fast_all_fibs(n-1)
    var << var[-1] + var[-2]
    # all_fibs(n-1) << all_fibs(n-1)[-1] + all_fibs(n-2)[-1]
    #let n = 3 ([0,1] << 1 + 0)
end