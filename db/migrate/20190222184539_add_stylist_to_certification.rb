class AddStylistToCertification < ActiveRecord::Migration[5.2]
  def change

    add_reference :certifications, :stylist, references: :users, index: true
    add_foreign_key :certifications, :users, column: :stylist_id
  end
end
