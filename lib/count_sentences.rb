require 'pry'

class String
  attr_accessor :sentence
  
  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    sentences_array = self.split(/[.!?]+/)
    sentences_array.count
  end
end
sentence = String.new
sentence.sentence = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
sentence.count_sentences