class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.column :email, 'varchar(255) not null'

      t.index :email, unique: true
      t.timestamps null: false
    end
  end
end
