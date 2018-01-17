class AddStatusToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :status, :boolean
  end
end
