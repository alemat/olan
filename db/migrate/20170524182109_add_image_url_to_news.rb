class AddImageUrlToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :image_url,  :text
  end
end
