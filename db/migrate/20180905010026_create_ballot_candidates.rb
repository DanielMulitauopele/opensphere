class CreateBallotCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :ballot_candidates do |t|
      t.references :ballot, foreign_key: true
      t.references :candidate, foreign_key: true
    end
  end
end
