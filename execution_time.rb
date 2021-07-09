def my_min1(list) #O(n^2)
    min = list.shift
    (0...list.length-1).each do |idx|
        (idx+1...list.length).each do |idx2|
            if list[idx2] > list[idx] && min > list[idx]
                min = list[idx]
            end
        end
    end
    min

end

def my_min2(list) #O(n)
    min = list.shift
    list.each do |num|
        min = num if num < min
    end
    min
end

def largest_contiguous_subsum(list)
    arr = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            arr << list[i..j]
        end
    end
    max = arr[0]
    arr.each do |sub|
        max = sub if sub.sum > max.sum
    end
    max
end

list = [5, 3, -7]
p largest_contiguous_subsum(list)