class AddCredsToVoters < ActiveRecord::Migration[5.1]
  def change
    add_column :voters, :username, :string
    add_column :voters, :password_digest, :string
    add_column :voters, :role, :integer, default: 0
  end
end
