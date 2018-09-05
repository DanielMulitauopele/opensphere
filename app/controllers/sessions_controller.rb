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
end
