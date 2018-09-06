class BallotsController < ApplicationController
  def index
    @ballots = Ballot.all
  end
end
