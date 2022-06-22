class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :uid, null: false
      t.string :password_digest, null: false
      t.boolean :activated, null: false, default: false
      t.boolean :admin, null: false, default: false
      t.timestamps
    end
  end
end