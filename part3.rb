def combine_anagrams(words)
 # YOUR CODE HERE
 # p "--------------------------------------------------------------------------------------------------"
 	res=[]
 	while !words.empty? do
 		w= words[0]
	 	r=[w]
	 	# puts "words before shift"
	 	# p words
	 	# puts "words after shift"
	 	words.shift
	 	newwords=Array.new(words)
	 	# p words
	 	# puts "w= #{w}"
	 	newwords.each do |word|
	 		# puts "comparing #{w} with #{word}"
	 		if	w.downcase.chars.sort.join == word.downcase.chars.sort.join
				r << word
				# p "==> deleting #{word} at index #{words.index(word)}"				
 				words.delete_at(words.index(word))
 			# 	p words
				# p newwords
			end
		end
		res << r
	end
	 res
end
 # arr= ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'Creams', 'scream','cars', 'For', 'potatoes', 'Racs', 'four', 'scar', 'creams', 'scream'] 
 #arr= ['a', 'b', 'A', 'b','c']
  #combine_anagrams arr