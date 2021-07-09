def two_sum?(arr,target)
    (0...arr.length - 1).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target
        end
    end
    false

end

def second_two_sum?(arr,target)
    arr.sort!
    i = 0
    j = arr.length - 1
    while i < j
        if arr[i] + arr[j] == target
            return true
        elsif arr[i] + arr[j] > target
            j -= 1
        else
            i += 1
        end
    end
    false
end

def third_two_sum?(arr,target)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele] = target - ele
    end

    

    hash.values.each do |value|
        return true if hash.has_key?(value) && value+value != target
        
    end
    false
end
arr = [0, 1, 5, 7]
p third_two_sum?(arr, 6) # => should be true
p third_two_sum?(arr, 10) # => should be false
