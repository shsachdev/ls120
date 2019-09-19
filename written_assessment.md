Today I start prepping for the LS 120 Written Assessment.

Some specifics to keep in mind (and to study for):

- Classes and Objects
- Setter and Getters
- Instance Methods vs Class Methods
- Referencing and setting instance variables vs. using getters and setters
- Class inheritance, encapsulation, and polymorphism
- Modules
- Method lookup path
- Self
  - Calling methods with self
  - More about self
- Reading OO Code
- Fake operators and equality
- Truthiness
- Working with collaborator objects

Self is an important concept.

We use self to specify a certain scope for our program. Self can refer to different things
depending on where it is used.

So far, 2 clear uses for Self:

1. Use self when calling setter methods from within the class. In our earlier example
we showed that self was necessary in order for our change_info method to work properly.
We had to use self to allow Ruby to disambiguate between a local variable and calling a setter method.

2. Use self for class method definitions.

So just to be clear, from within a class...

self, inside of an instance method, references the instance (object) that called the method - the calling object.
Therefore, self.weight= is the same as sparky.weight=, in our example.

self, outside of an instance method, references the class and can be used to define class methods.
Therefore, def self.name=(n) is the same as def GoodDog.name=(n), in our example.

Super

Ruby provides us with a built-in function called super that allows us to call methods
up the inheritance hierarchy. When you call super from within a method, it will search
the inheritance hierarchy for a method by the same name and then invoke it.

Difference between Class Methods and Instance Methods

Instance methods pertain to an instance or object of the class.
Class methods are where we put functionality that does not pertain to individual objects.

Objects contain state and if we have a method that does not need to deal with state, then
we can just use a class method.

Inheritance

Inheritance is when a class inherits behavior from another class. The class that is
inheriting behavior is called the subclass and the class it inherits from is called
the superclass.
