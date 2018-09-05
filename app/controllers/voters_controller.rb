class VotersController < ApplicationController
  def new
    @voter = Voter.new
  end

  def show
    @voter = Voter.find(params[:id])
  end

  def create
    @voter = Voter.new(voter_params)
    if @voter.save
      redirect_to voter_path(@voter)
    else
      render :new
    end
  end

  private

  def voter_params
    params.require(:voter).permit(:username, :password)
  end
end
