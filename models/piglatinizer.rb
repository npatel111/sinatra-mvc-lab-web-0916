require 'byebug'
class PigLatinizer

  # def initialize
  #
  # end

  def piglatinize(word)
    if word.downcase.start_with?('a','e','i','o','u')
      "#{word}way"
    else
      parts = word.split(/([aeiou].*)/)
      second_part = parts[1] || ""
      second_part + parts[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end
end

# self.piglatinize("indeed")
