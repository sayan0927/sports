class RemoveFullnameFromApplication < ActiveRecord::Migration[7.0]
  def change
    remove_column :applications, :fullname, :string
  end
end
