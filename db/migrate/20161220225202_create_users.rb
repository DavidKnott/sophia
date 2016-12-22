class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.datetime :updated_at, null: false
      t.datetime :created_at, null: false
    end
    add_index :users, :email, unique: true
  end
end
