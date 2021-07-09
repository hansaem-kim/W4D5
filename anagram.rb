def first_anagram?(str1,str2)
    str1 = str1.split("")
    possible_words = str1.permutation.to_a
    possible_words.map! do |word|
        word.join("")
    end
    possible_words.include?(str2)
end

def second_anagram?(str1,str2)
    str1.each_char do |char|
        if str2.index(char) == nil
            return false
        else
            str2 = str2[0...str2.index(char)] + str2[str2.index(char)+1..-1]
        end
    end
    return false if str2.length != 0
    true
end

def third_anagram?(str1,str2)
    str1 = str1.split("").sort
    str2 = str2.split("").sort

    str1 == str2
end

def fourth_anagram?(str1,str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char do |char|
        hash1[char] += 1
    end

    str2.each_char do |char|
        hash2[char] += 1
    end
    hash1 == hash2
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true