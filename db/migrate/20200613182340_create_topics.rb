class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :category
      t.integer :post_id

      t.timestamps
    end
  end
end
