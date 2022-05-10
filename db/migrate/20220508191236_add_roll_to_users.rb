class AddRollToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :roll, :string
  end
end
