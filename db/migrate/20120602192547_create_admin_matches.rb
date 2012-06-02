class CreateAdminMatches < ActiveRecord::Migration
  def change
    create_table :admin_matches do |t|

      t.timestamps
    end
  end
end
