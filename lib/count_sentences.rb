require 'pry'

class String
    def sentence?
        return true if self[-1] == '.'
        false
    end

    def question?
        return true if self[-1] == '?'
        false
    end

    def exclamation?
        return true if self[-1] == '!'
        false
    end

    def count_sentences
        count = 0
        strip.split(' ').each do |word|
            count += 1 if word[-1] == '.' || word[-1] == '?' || word[-1] == '!'
        end

        count
    end
end
