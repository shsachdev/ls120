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
