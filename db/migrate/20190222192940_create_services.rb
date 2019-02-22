class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.references :salon, foreign_key: true
      t.references :certification, foreign_key: true

      t.timestamps
    end
  end
end
