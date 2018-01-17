class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :name
      t.string :url
      t.string :main_container
      t.string :headline_container
      t.string :introtext_container
      t.string :link_container
      t.string :link_prefix

      t.timestamps
    end
  end
end
