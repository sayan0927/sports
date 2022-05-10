class RemoveFieldnameFromApplication < ActiveRecord::Migration[7.0]
  def change
    remove_column :applications, :fieldname, :string
  end
end
