class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :phone
      t.string :email
      t.string :web
      t.string :business_certification
      t.string :image
      t.string :tax_id

      t.timestamps
    end
  end
end
