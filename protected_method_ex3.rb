# from outside the class, protected methods act just like private methods.

# from inside the class, protected methods are accessible just like public methods.

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new

fido.a_public_method # => Will this work? Yes, I'm protected!

# but outside, the class:

fido.a_protected_method # but cannot be called directly from outside the class.
