class StudentsController < ApplicationController
    def index
      @student = Student.new  
     #After enetering records remove comment from second line
      #@student = Student.find(:all)
    end
    
    def create
      @student = Student.new(params[:student])
      if @student.save
        redirect_to new_student_path
      end  
    end    

end
