class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to root_path, notice: 'Task saved successfully'
    else
      render 'new'
    end
  end

  def show

  end

  def sort
    params[:order].each do |key,value|
      Task.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end

  private

  def task_params
    params.require(:task).permit(:title,:description)
  end
end
