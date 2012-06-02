class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.string :url

      t.boolean :published
      t.boolean :archived

      t.text :comments

      t.references :idea, :space
      t.timestamps
    end
  end
end
