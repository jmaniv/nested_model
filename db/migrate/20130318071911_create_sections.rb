class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.section :name
      t.references :document
      t.timestamps
    end
  end
end
