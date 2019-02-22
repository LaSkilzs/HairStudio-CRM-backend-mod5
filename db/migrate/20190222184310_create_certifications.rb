class CreateCertifications < ActiveRecord::Migration[5.2]
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :organization
      t.boolean :license
      t.integer :license_id
      t.datetime :renewal

    
      t.timestamps
    end
  end
end
