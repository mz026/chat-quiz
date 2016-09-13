class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.column :name, 'varchar(255) not null'
      t.column :email, 'varchar(255) not null'

      t.index :email, unique: true
      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
