class VotersController < ApplicationController
  def new
    @voter = Voter.new
  end

  def show
  end

  def create
    @voter = Voter.new(voter_params)
    if @voter.save
      session[:voter_id] = @voter.id
      redirect_to voter_path(@voter)
    else
      render :new
    end
  end

  private

  def voter_params
    params.require(:voter).permit(:name, :age, :ethnicity, :registered_party, :username, :password)
  end
end
