# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster, :add_student

    def add_student(student, grade)
        @student = student
        @grade = grade
        roster[grade] ||= []
        roster[grade] << student
        
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, students|
            students.sort!
        end
    end


end