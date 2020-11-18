require 'pry'
class School
    attr_reader :school_name
    attr_accessor :roster
  
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(school_grade)
        roster.each do |key, value|
            if key == school_grade
                return value
            end
        end
    end

    def sort
        roster.each do |grade_level, names|
            roster[grade_level] = names.sort
        end
        return roster
    end
    
end




















#     grade_arr = roster.select {|value| roster[grade] == school_grade}
    #     grade_arr
    # end