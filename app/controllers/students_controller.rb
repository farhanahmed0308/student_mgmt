class StudentsController < ApplicationController
    def index
        @students = Student.all        
    end
    def new
        @studnet = Student.new
    end
    def create
        @student = Student.new(params.require(:student).permit(:first_name,:last_name, :email,:date_of_birth))
        if @student.save
            redirect_to students_path
        else
            render "new"
        end
        
    end
    def show
        @student = Student.find(params[:id])
    end
    def edit
    end
    def update
        
end
