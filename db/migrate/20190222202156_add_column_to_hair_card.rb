class AddColumnToHairCard < ActiveRecord::Migration[5.2]
  def change
    add_column :hair_cards, :been_pregnant_in_the_last_6_months?, :boolean
    add_column :hair_cards, :which_ones?
  end
end
