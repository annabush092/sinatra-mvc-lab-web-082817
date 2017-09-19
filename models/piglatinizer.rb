class PigLatinizer

  def piglatinize(input_string)
#if it starts with a vowel, add 'way' to the end
    if start_with_vowel(input_string)
      return "#{input_string}way"
#else, take the beginning of the word until you get to a vowel, put those characters at the end, and add 'ay'
    else
      sliced_array = input_string.strip.split(/(?=[a|e|i|o|u])/, 2)
      return "#{sliced_array[1]}#{sliced_array[0]}ay"
    end
  end

  def start_with_vowel(input_string)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I","O","U"]
    vowels.find do |char|
      input_string.start_with?(char)
    end
  end

  def to_pig_latin(input_string)
    input_string.split(" ").map do |word|
      self.piglatinize(word)
    end.join(" ")
  end

end
