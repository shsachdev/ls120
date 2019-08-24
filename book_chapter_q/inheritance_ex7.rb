class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def name
    puts "This is #{@name}"
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end
