class RemoveVoterIdFromBallots < ActiveRecord::Migration[5.1]
  def change
    remove_column :ballots, :voter_id
  end
end
