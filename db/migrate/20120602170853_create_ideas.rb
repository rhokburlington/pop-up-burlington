class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      
      t.boolean :published
      t.boolean :archived

      t.string  :name
      t.string  :description
      t.string  :contact 
      t.integer  :capacity

      t.text :success_criteria
      t.text :goodwill
      t.text :logistics
      t.text :features
      t.text :formality

      t.timestamps
    end
  end
end
