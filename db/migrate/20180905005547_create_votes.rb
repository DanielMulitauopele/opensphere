class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :voter, foreign_key: true
      t.references :candidate, foreign_key: true
      t.timestamps
    end
  end
end
