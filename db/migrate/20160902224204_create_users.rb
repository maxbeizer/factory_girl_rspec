class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.boolean :admin, null: false, default: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end