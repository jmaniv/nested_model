class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
