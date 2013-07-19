
def palindrome?(str)
  str=str.downcase.gsub(/\W/,"")
  str==str.reverse
end

def count_words(str)
	hsh={}
	str.downcase.gsub(/\b[a-z]*\b/).each do |key|
	  	if key!=""
		  	if hsh[key]
		  		hsh[key]+=1
		  	else
		  		hsh[key]=1
		  	end
		end
	end
	hsh
end
