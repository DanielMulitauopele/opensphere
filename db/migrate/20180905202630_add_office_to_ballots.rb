class AddOfficeToBallots < ActiveRecord::Migration[5.1]
  def change
    add_column :ballots, :office, :string
    remove_column :candidates, :office
  end
end
