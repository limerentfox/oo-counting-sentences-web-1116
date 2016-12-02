require 'pry'

class String

  def sentence?
    return true if self[-1] == "."
    false
  end

  def question?
    return true if self[-1] == "?"
    false
  end

  def exclamation?
    return true if self[-1] == "!"
    false
  end

  def count_sentences
    count = 0
    self.strip.split(' ').each do |word|
    if word[-1] == '.' || word[-1] == '?' || word[-1] == '!'
      count += 1
    end
  end

    return count
  end
end
