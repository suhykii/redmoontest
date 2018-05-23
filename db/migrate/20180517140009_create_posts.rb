class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :db_title
      t.text :db_content
      t.text :image

      t.timestamps null: false
    end
  end
end
