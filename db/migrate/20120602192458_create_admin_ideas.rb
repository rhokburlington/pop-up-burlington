class CreateAdminIdeas < ActiveRecord::Migration
  def change
    create_table :admin_ideas do |t|

      t.timestamps
    end
  end
end
