#write your code here

def echo (phrase)
    phrase
end

def shout (phrase)
    phrase.upcase
end

def repeat (phrase, times = 2)
    ([phrase] * times).join(" ")
end

def start_of_word (phrase, characters = 1)
    phrase[0...characters]
end

def first_word (phrase)
    phrase.split()[0]
end

def titleize (phrase)
    smallWords = ["the", "and", "over"]
    workArr = phrase.split()
    workArr.each_with_index do |val, ind|
        if !smallWords.include?(val) || ind == 0
            workArr[ind] = val.capitalize
        end
    end
    return workArr.join(" ")
end
