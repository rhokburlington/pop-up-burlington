class CreateAdminSpaces < ActiveRecord::Migration
  def change
    create_table :admin_spaces do |t|

      t.timestamps
    end
  end
end
