class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    # we have to go on task page that we just created
    redirect_to task_path(@task)
  end

  def edit

  end

  def update
    @task.update(task_params)

    # we have to go on task page that we just updated
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end


  def set_task
    @task = Task.find(params[:id])
  end
end
