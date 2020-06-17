class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :likes
      t.string :url_link
      t.boolean :video, default: false
      t.integer :user_id
      t.timestamps
    end
  end
end
