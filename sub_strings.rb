dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
  result = Hash.new(0)
  string_arr = string.split(' ')
  dictionary.each do |dictionary_word|
    string_arr.each do |string_word|
      if string_word.include?(dictionary_word)
        result[dictionary_word] += 1
      end
    end
  end
  result  
end

puts substrings("below", dictionary)

puts "\n\n"

puts substrings("Howdy partner, sit down! How's it going?", dictionary)