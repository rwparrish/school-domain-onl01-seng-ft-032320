class School
  
  attr_accessor :roster, :grade, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(student, grade)
    if roster.has_key?(grade) 
      roster[grade] << student
    else 
      roster[grade] = []
      roster[grade] << student
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
      roster.collect do |grade,name|
      roster[grade] = name.sort
    end
    roster
  end
end