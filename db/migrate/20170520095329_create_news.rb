class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :medium_id
      t.text :headline
      t.text :intro_text
      t.text :link

      t.timestamps
    end
  end
end
