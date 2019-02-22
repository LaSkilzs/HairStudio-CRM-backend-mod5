class AddWhichColumnToHairCard < ActiveRecord::Migration[5.2]
  def change
    add_column :hair_cards, :which_method?, :text
  end
end
