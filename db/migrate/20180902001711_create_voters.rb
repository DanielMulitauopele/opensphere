class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :voters do |t|
      t.string :name
      t.integer :age
      t.string :ethnicity
      t.string :registered_party
    end
  end
end
