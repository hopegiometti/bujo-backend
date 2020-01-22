class StreaksController < ApplicationController

    def create
        @streak = Streak.create(streak_params)
        render json: @streak
    end

    def index
        @streaks = Streak.all
        render json: @streaks
    end

    def destroy
        @streak = Streak.find(params[:id])
        @streak.destroy
        render json: { status: 'SUCCESS', message: 'deleted the event', data: @streak }
    end

    private

    def streak_params
        params.permit(:date, :habit_id)
    end

end
