class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.text :content
      t.integer :question_id
      t.timestamps
    end
  end
end
