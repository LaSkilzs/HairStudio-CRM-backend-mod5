class RemoveColumnFromHairCard < ActiveRecord::Migration[5.2]
  def change
    remove_column :hair_cards, :been_pregnant_in
    remove_column :hair_cards, :_the_last_6_months?
    remove_column :hair_cards, :which
    remove_column :hair_cards, :_method?
  end
end
