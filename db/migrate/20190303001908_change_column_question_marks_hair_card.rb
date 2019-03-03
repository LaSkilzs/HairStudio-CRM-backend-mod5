class ChangeColumnQuestionMarksHairCard < ActiveRecord::Migration[5.2]
  def change
    rename_column :hair_cards, :suffered_from_hair_loss?, :suffered_from_hair_loss
    rename_column :hair_cards, :been_diagnosed_with_alopecia?, :been_diagnosed_with_alopecia
    rename_column :hair_cards, :take_any_medication?, :take_any_medication
    rename_column :hair_cards, :been_pregnant_in_the_last_6_months?, :been_pregnant_in_the_last_6_months
    rename_column :hair_cards, :suffer_from_psoriasis_to_the_scalp?, :suffer_from_psoriasis_to_the_scalp
    rename_column :hair_cards, :suffer_from_ezcema_to_the_scalp?, :suffer_from_ezcema_to_the_scalp
    rename_column :hair_cards, :have_a_sensitive_scalp?, :have_a_sensitive_scalp
    rename_column :hair_cards, :any_known_allergies?, :any_known_allergies
    rename_column :hair_cards, :which_ones?,:which_ones
    rename_column :hair_cards, :frequently_swim_or_go_to_the_gym?, :frequently_swim_or_go_to_the_gym
    rename_column :hair_cards, :currently_have_colour_in_your_hair?, :currently_have_colour_in_your_hair
    rename_column :hair_cards, :which_method?, :which_method
    rename_column :hair_cards, :last_time_colored?, :last_time_colored
    rename_column :hair_cards, :used_hair_extensions_before?, :used_hair_extensions_before
    rename_column :hair_cards, :which_type_did_you_use?, :which_type_did_you_use
    rename_column :hair_cards, :have_a_perm_or_relaxer?, :have_a_perm_or_relaxer
    rename_column :hair_cards, :last_time_you_had_a_relaxer?, :last_time_you_had_a_relaxer
    rename_column :hair_cards, :wash_frequency?, :wash_frequency
    change_column :hair_cards, :hair_is, :string, default: "noresponse"
    change_column :hair_cards, :hair_type, :string, default: "unanswered"
    change_column :hair_cards, :length, :string, default: "unknown"

  end
end
