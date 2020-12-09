# code here!
require 'pry'
class School

    attr_accessor :roster
 

    def initialize(school_name)
        @name= school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end
end

#binding.pry
#{7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]}