class CreateHairCards < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_cards do |t|
      t.boolean :suffered_from_hair_loss?
      t.boolean :been_diagnosed_with_alopecia?
      t.boolean :take_any_medication?
      t.string :been_pregnant_in
      t.boolean :_the_last_6_months?
      t.boolean :suffer_from_psoriasis_to_the_scalp?
      t.boolean :suffer_from_ezcema_to_the_scalp?
      t.boolean :have_a_sensitive_scalp?
      t.boolean :any_known_allergies?
      t.text :which_ones?
      t.boolean :frequently_swim_or_go_to_the_gym?
      t.boolean :currently_have_colour_in_your_hair?
      t.string :which
      t.text :_method?
      t.text :last_time_colored?
      t.boolean :used_hair_extensions_before?
      t.text :which_type_did_you_use?
      t.boolean :have_a_perm_or_relaxer?
      t.boolean :last_time_you_had_a_relaxer?
      t.text :wash_frequency?
      t.text :hair_type
      t.text :hair_is
      t.text :lenght
      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end
