class HabitsController < ApplicationController

    def create
        @habit = Habit.create(habit_params)
        render json: @habit
    end

    def index
        @habits = Habit.all
        render json: @habits
    end

    def show
        @habit = Habit.find(params[:id])
        render json: @habit
    end

    def update
        @habit = Habit.find(params[:id])
        @habit.update(habit_params)
        render json: @habit
    end

    def destroy
        @habit = Habit.find(params[:id])
        @habit.destroy
        render json: { status: 'SUCCESS', message: 'deleted the event', data: @habit }
    end

    private

    def habit_params
        params.permit(:name, :page_id)
    end

end
