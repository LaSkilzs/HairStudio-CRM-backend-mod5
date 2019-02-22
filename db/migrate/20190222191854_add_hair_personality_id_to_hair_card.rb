class AddHairPersonalityIdToHairCard < ActiveRecord::Migration[5.2]
  def change
    add_reference :hair_cards, :hair_personalities, foreign_key: true, index: true
  end
end
