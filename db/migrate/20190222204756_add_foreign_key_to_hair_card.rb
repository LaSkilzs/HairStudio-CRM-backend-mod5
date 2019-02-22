class AddForeignKeyToHairCard < ActiveRecord::Migration[5.2]
  def change
    add_reference :hair_cards, :hair_personality, index: true
    add_foreign_key :hair_cards, :hair_personalities 
  end
end
