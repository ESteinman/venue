class PerformersController < ApplicationController
    respond_to :js
    before_action :authenticate_user!, only: [:create]

    def new
        @performer = Performer.new
    end
    
    def create
        @performer = current_user.performers.create(performer_params)
        if @performer.persisted?
            flash[:notice] = 'Artist page successfully created'
            redirect_to performer_path(@performer)
        else
            render json: {message: "Additional input required"}, status: 422
        end
    end

    def show
        @performer = Performer.find(params[:id])
    end

    def edit
        @performer = Performer.find(params[:id])
    end

    def update
        @performer = Performer.find(params[:id])
        @performer.update_attributes(performer_params)
        redirect_to performer_path(@performer), notice: 'Profile has been successfullu updated'
    end

    private

    def performer_params
        params.require(:performer).permit(
            :name,
            :genre,
            :city,
            :description,
            :facebook,
            :instagram,
            :twitter,
            :youtube,
            :website,
            :spotify
            )
    end
end
