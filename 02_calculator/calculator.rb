#write your code here

def add (int1, int2)
    return int1 + int2
end

def subtract (int1, int2)
    return int1 - int2
end

def sum (arr)
    output = 0
    arr.each do |elem|
        output += elem
    end
    return output
end

def multiply (*ints)
    output = 1
    ints.each do |int|
        output *= int
    end
    return output
end

def power (base, exp)
    return base ** exp
end

def factorial (int)
    calcArr = [int]
    while calcArr.last > 2 do
        calcArr.push calcArr.last - 1
    end
    output = 1
    calcArr.each do |each|
        output *= each
    end
    if calcArr.last == 0
        output = 1
    end
    return output
end