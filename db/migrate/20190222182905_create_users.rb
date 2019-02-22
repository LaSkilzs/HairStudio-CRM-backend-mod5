class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :image
      t.integer :role
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
