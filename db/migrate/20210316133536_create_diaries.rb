class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|

      t.integer :category_id   , null: false
      t.integer :score
      t.string  :text

      t.timestamps
    end
  end
end
