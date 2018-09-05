class AddBallotIdToVotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :votes, :ballot, foreign_key: true
  end
end
