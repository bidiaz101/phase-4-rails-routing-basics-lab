class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        students = Student.all.sort_by do |student|
            student.grade
        end.reverse!

        render json: students
    end

    def highest_grade
        max = Student.all.max_by do |student|
            student.grade
        end

        render json: max
    end
end
