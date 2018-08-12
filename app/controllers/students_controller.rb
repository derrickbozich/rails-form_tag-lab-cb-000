class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # @student = Student.find_by(first_name: params['first_name'])
    # session[:form_params] = params.inspect
    #
    # binding.pry
    redirect_to student_path(@student)
  end

end
