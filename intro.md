Getting started with Launch School's object oriented programming course.

Some notes:

Encapsulation is hiding pieces of functionality and making it unavailable to the rest of the code base. It is a form of data protection, so that data cannot be manipulated or changed without obvious intention. It is what defines the boundaries in your application and allows your code to achieve new levels of complexity. Ruby, like many other OO languages, accomplishes this task by creating objects, and exposing interfaces (i.e., methods) to interact with those objects.

Polymorphism == "many forms"

The concept of inheritance is used in Ruby where a class inherits the behaviors of another class, referred to as the superclass. This gives Ruby programmers the power to define basic classes with large reusability and smaller subclasses for more fine-grained, detailed behaviors.

Everything in ruby is an object.

Everything in ruby is an object.

Everything in ruby is an object.

Objects are created from classes. Think of classes as molds and objects as the things you produce out of those molds.

Individual objects will contain  different information from other objects, yet they are instances of the same class.

```ruby

"hello".class => string

"world".class => string

```
As you can see, everything we've been using, from strings to integers, are in fact objects, which are instantiated from a class. We'll dig deeper into this very soon.

Ruby defines the attributes and behaviors of its objects in `classes`.

Here is an example:

```ruby

class GoodDog
end

sparky = GoodDog.new

```
Above, we have created an instance of our ```GoodDog``` class and stored it in the variable ```sparky```.

We now have an object. We say that ```sparky``` is an object or instance of class ```GoodDog```.

This entire workflow of creating a new object or instance from a class is called **instantiation**.
