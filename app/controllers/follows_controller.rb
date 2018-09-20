class FollowsController < ApplicationController
    before_action :authenticate_user!
    respond_to :js

    def create
    @user = User.find(params[:user_id])
    current_user.follow(@performer)
    if @follow.persisted?
    flash[:notice] = 'You are now following this artist'
    redirect_to performer_path(@performer)
    end

    def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@performer)
    end
end