class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :idea, :space
      t.timestamps
    end
  end
end
