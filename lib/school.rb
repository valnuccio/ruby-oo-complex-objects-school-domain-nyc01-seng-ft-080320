class School
    attr_accessor :name, :roster
  
    def initialize(name)
      @name = name
      @roster = {}
    end
  # not sure about this next bit - remember to ask in class why this fixed it. 
    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
      end


    def grade(student_grade)
      roster[student_grade]
    end
  
    def sort
      hash = {}
      roster.each do |grade, students|
        hash[grade] = students.sort
      end
      hash
    end
  end
  