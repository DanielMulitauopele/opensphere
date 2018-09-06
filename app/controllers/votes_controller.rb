class VotesController < ApplicationController
  def new
    @ballotcandidates = BallotCandidate.all
    # require "pry"; binding.pry
    @ballot = Ballot.find(params[:ballot_id])
  end
end
