class AddOfficeToCandidates < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :office, :string
    remove_column :candidates, :name
    add_reference :candidates, :voter, foreign_key: true
  end
end
