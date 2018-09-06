class BallotsController < ApplicationController
  def index
    @ballots = Ballot.all
    # require "pry"; binding.pry
  end
end
