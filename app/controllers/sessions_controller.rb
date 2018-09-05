class SessionsController < ApplicationController
  def new
  end

  def create
    voter = Voter.find_by(username: params[:username])
    if voter && voter.authenticate(params[:password])
      session[:voter_id] = voter.id
      redirect_to voter_path(voter)
    else
      render :new
    end
  end

  def destroy
    session[:voter_id] = nil
    redirect_to root_path
  end
end
