def substrings (string, dictionary)
  string = string.downcase
  substrings_hash = Hash.new(0)
  dictionary.each_with_index do |word, index|
    is_found = string.split(word)
    #puts is_found.length
    #puts string.split(word)
    #puts word
    #puts is_found[0]
    if is_found.length > 1
      substrings_hash[word] += is_found.length - 1
    elsif is_found.length == 0
      substrings_hash[word] += 1
    end
  end
  substrings_hash
end

dictionary = ["lol", "ha", "lmfao"]

#test 1
#puts substrings("lol", dictionary)

#test 2
#puts substrings("ha lol lol lmao", dictionary)

#test 3
#puts substrings("Have you loled in the lmfao-ed lmfao-ed lmfao-ed", dictionary)

#test 4
#puts substrings("tnt", dictionary)
