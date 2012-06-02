class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
   	  t.string  :name
      t.string  :description
      t.timestamps
    end
  end
end
