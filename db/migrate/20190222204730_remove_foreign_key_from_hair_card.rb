class RemoveForeignKeyFromHairCard < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :hair_cards, :hair_personalities
    remove_reference :hair_cards, :hair_personalities, index: true
  end
end
