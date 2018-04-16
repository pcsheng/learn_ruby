class Book
# write your code here

    def title= (name)
        smallWords = [ "the", "a", "an", "and", "in", "of" ]
        output = []
        wordArr = name.split()
        wordArr.each_with_index do |word, index|
            if smallWords.include?(word.downcase) && index != 0
                output.push(word.downcase)
            else
                output.push(word.capitalize)
            end
        end

        @bookName = output.join(" ")
    end

    def title
        @bookName
    end

end