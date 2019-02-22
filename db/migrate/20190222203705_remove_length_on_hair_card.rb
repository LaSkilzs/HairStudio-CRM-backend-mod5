class RemoveLengthOnHairCard < ActiveRecord::Migration[5.2]
  def change
    remove_column :hair_cards, :lenght
  end
end
