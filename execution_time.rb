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
    max = arr[0][0]
    arr.each do |sub|
        max = sub.sum if sub.sum > max
    end
    max
end

def largest_contiguous_subsum2(list) #[2, 3, -6, 7, -6, 7]
    best_sum = list[0] #2
    current_sum = list.shift #2 

    list.each_with_index do |ele,idx|
        current_sum = [current_sum+ele,ele].max
        best_sum = [best_sum,current_sum].max        
    end
    best_sum
    
end
list = [-5, -1, -3]
# largest_contiguous_subsum(list) # => 8


p largest_contiguous_subsum(list)