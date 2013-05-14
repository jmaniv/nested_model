class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.references :user
      t.references :section
      t.references :content
      t.timestamps
    end
  end
end
