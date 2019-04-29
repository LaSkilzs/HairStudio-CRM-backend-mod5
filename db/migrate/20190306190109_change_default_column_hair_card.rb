class ChangeDefaultColumnHairCard < ActiveRecord::Migration[5.2]
  def change
    change_column :hair_cards, :hair_is, :string, default: "normal"
    change_column :hair_cards, :hair_type, :string, default: "regular"
  end
end
