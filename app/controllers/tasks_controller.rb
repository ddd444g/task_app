class TasksController < ApplicationController

  def index
    @tasks = Task.all
    # 現在のタスク数を取得する
    @tasks_count = Task.all.count
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title,:start,:stop,:memo))
    if @task.save
      flash[:notice] = "タスクを新規登録しました"
      redirect_to :tasks
    else
      render "new"
    end  
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params.require(:task).permit(:title, :start, :stop, :memo))
      flash[:notice] = "タスクIDが「#{@task.id}」の情報を更新しました"
      redirect_to :tasks
    else
      render "edit"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "タスクIDが「#{@task.id}」のタスクを削除しました"
    redirect_to :tasks
  end
end
