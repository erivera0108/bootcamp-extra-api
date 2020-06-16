class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :color
      t.string :label
      t.integer :post_id
      t.timestamps
    end
  end
end
