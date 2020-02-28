class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.integer :number
      t.string :genre
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
