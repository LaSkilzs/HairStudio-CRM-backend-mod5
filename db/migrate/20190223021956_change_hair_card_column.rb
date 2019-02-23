class ChangeHairCardColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :hair_cards, :hair_type, :string
    change_column :hair_cards, :hair_is, :string
    change_column :hair_cards, :length, :string
  end
end
