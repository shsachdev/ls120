class Transform
  def initialize(text)
    @text = text
  end

  def uppercase
    @text.upcase
  end

  def self.lowercase(n)
    n.downcase
  end
end




my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
