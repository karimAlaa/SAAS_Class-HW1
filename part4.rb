class Dessert
  attr_accessor :name, :calories
  @@food=['apple','banana', 'jellybean']
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
   true
  end
end

class JellyBean < Dessert
   attr_accessor :flavor
  def initialize(name, calories, flavor)
    @name=name
    @calories=calories
    @flavor=flavor
  end
  
  def delicious?
     @@food.include?(@name) && @flavor != "black licorice"
  end
end


# d1=Dessert.new('banana', 115)
# p d1.healthy?
# p d1.delicious?

# jellybean3 = JellyBean.new('jellybean', 5, 'straw')
# p jellybean3.healthy?
# p jellybean3.delicious?