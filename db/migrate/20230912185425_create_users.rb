class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :avatar, null: false, default: "default_avatar.jpg"
      t.string :username, null: false, default: ""

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
