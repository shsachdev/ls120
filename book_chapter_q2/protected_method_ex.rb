class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method #self.a_protected_method all good, because you can access protected method from inside the class.
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new

p fido.a_public_method

p fido.a_protected_method # returns error; you can't access protected method from outside the class.
