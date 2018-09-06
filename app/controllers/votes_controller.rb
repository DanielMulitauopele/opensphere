class VotesController < ApplicationController
  def new
    @ballotcandidates = BallotCandidate.all
    @ballot = Ballot.find(params[:ballot_id])
  end
end
