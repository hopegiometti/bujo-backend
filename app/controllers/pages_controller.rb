class PagesController < ApplicationController

    def index
        @pages = Page.all
        render json: @pages
    end

    def show
        @page = Page.find(params[:id])
        render json: @page
    end

    def create
        @page = Page.create(page_params)
        render json: @page
    end

    def update
        @page = Page.find(params[:id])
        @page.update(page_params)
        render json: @page
    end

    def destroy
        @page = Page.find(params[:id])
        @page.destroy
        render json: { status: 'SUCCESS', message: 'deleted the event', data: @page }
    end

    private
    
    def page_params
        params.permit(:month, :layout, :journal_id)
    end

end
