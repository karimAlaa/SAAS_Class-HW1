class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(cur)

     singular_currency = cur.to_s.gsub( /s$/, '')
     if singular_currency == "dollar"
        return self
     end
     if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    end
  end

end

class String
  def palindrome?
    str=self.downcase.gsub(/\W/,"")
    str==str.reverse
  end
end

module Enumerable
  def palindrome?
    if !self.respond_to?(:each)
      false
    end 
    arr, arr_rev = [],[]
    self.each do |elem|
      arr << elem
      arr_rev.insert(0, elem)
    end
    arr == arr_rev
  end
end