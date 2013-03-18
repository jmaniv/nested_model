class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.section :name

      t.timestamps
    end
  end
end
