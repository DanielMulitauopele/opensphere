class AddVoterIdToBallots < ActiveRecord::Migration[5.1]
  def change
    add_reference :ballots, :voter, foreign_key: true
  end
end
