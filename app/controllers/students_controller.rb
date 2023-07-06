class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :update, :show, :destory]
    def show
        
    end

    def index
        @students = Student.all        
    end

    def new
        @studnet = Student.new
    end
    def create
        @student = Student.new(student_param)
        if @student.save
            redirect_to students_path
        else
            render "new"
        end      
    end
  
    def edit
        
    end
    def update
    
        if @student.update(student_param)
            redirect_to students_path
        else
            render "edit"
        end
    end
    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path, notice: 'User was successfully deleted.'
      end
    
        


    private
      def student_param
        params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth)
       end
      def set_student
         @student = Student.find(params[:id])
      end

end