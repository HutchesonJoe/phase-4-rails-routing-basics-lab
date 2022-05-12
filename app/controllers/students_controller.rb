class StudentsController < ApplicationController

  def index
    students = Student.all 
    render json: students
  end 

  def grades
    students = Student.all
    by_grades = students.sort_by { |student| -student.grade}
    render json: by_grades
  end

  def highest_grade
    students = Student.all
    by_grades = students.sort_by { |student| -student.grade}
    render json: by_grades.first
  end
end
