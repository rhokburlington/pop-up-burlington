class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      
      t.boolean :published
      t.boolean :archived

      t.string  :name
      t.string  :description
      t.string  :contact
      t.integer :capacity

      t.text :benefit
      t.text :goodwill
      t.text :long_description
      t.text :satisfaction
      t.text :formality

      t.timestamps
    end
  end
end
