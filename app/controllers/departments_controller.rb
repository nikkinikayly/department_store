class DepartmentsController < ApplicationController
  before_action :set_dept, only: [:show, :update, :edit, :destroy]
  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(dept_params)
    if @department.save
      redirect_to @department
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @department.update(dept_params)
      redirect_to @department
    else
      render :edit
    end
  end

  def show
  end

  private
    def set_dept
      @department = Department.find(params[:id])
    end

    def dept_params
      params.require(:department).permit(:name)
    end
end
