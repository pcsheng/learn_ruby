#write your code here

# need to watch out for "qu"
def translate (phrase)
    vowels = [ "a", "e", "i", "o" ]
    words = phrase.split()
    output = []
    words.each do |val|
        count = 0
        consonant = true

        while consonant do
            if vowels.include? val[count]
                consonant = false
            elsif val[count] == "u" && count != 0
                if val[count - 1] == "q" || val[count - 1] == "Q"
                    count += 1
                else
                    consonant = false
                end
            else
                count += 1
            end
        end

        if /\p{P}/.match? (val[-1])
            output.push val[count...-1] + val[0...count] + "ay" + val[-1]
        else
            output.push val[count...-1] + val[-1] + val[0...count] + "ay"
        end

        if !(val == val.downcase)
            output[-1] = output[-1].capitalize
        end

    end

    return output.join(" ")
    
end