def combine_anagrams(words)
 	result=[]
 	while !words.empty? do
	 	w=words.shift
	 	temp=[w]
	 	sub_words=Array.new(words)
	 	sub_words.each do |word|
	 		if	w.downcase.chars.sort.join == word.downcase.chars.sort.join
				temp << word		
 				words.delete_at(words.index(word))
			end
		end
		result << temp
	end
	 result
end