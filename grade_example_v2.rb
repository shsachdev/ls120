class Student

  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  attr_accessor :grade
end

joe = Student.new("Joe", 87)

shikhar = Student.new("Shikhar", 89)

puts joe.better_grade_than?(shikhar) # => false
