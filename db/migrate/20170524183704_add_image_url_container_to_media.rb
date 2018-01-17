class AddImageUrlContainerToMedia < ActiveRecord::Migration[5.0]
  def change
    add_column :media, :image_url_container, :text
    add_column :media, :image_prefix, :text
  end
end
