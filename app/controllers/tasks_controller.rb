class TasksController < ApplicationController

    def index 
        @tasks = Task.all
        render json: @tasks
    end

    def show 
        @task = Task.find(params[:id])
        render json: @tasks
    end

    def create
        @task = Task.create(task_params)
        render json: @task
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        render json: @task
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        render json: { status: 'SUCCESS', message: 'deleted the event', data: @task }
    end

    private

    def task_params
        params.permit(:description, :date, :page_id, :completed)
    end

end
