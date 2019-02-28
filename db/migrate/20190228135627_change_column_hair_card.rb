class ChangeColumnHairCard < ActiveRecord::Migration[5.2]
  def change
    change_column :hair_cards, :suffered_from_hair_loss?, :boolean, default: false
    change_column:hair_cards, :been_diagnosed_with_alopecia?, :boolean, default: false
    change_column :hair_cards, :take_any_medication?, :boolean, default: false
    change_column :hair_cards, :been_pregnant_in_the_last_6_months?, :boolean, default: false
    change_column :hair_cards, :suffer_from_psoriasis_to_the_scalp?, :boolean, default: false
    change_column :hair_cards, :suffer_from_ezcema_to_the_scalp?, :boolean, default: false
    change_column :hair_cards, :have_a_sensitive_scalp?, :boolean, default: false
    change_column :hair_cards, :any_known_allergies?, :boolean, default: false
    change_column :hair_cards, :which_ones?, :text, default: "unanswered"
    change_column :hair_cards, :frequently_swim_or_go_to_the_gym?, :boolean, default: false
    change_column :hair_cards, :currently_have_colour_in_your_hair?, :boolean, default: false
    change_column :hair_cards, :which_method?, :text, default: "unanswered"
    change_column :hair_cards, :last_time_colored?, :text, default: "unanswered"
    change_column :hair_cards, :used_hair_extensions_before?, :boolean, default: false
    change_column :hair_cards, :which_type_did_you_use?, :text, default: "unanswered"
    change_column :hair_cards, :have_a_perm_or_relaxer?, :boolean, default: false
    change_column :hair_cards, :last_time_you_had_a_relaxer?, :text, default: "unanswered"
    change_column :hair_cards, :wash_frequency?, :text, default: "unanswered"
    change_column :hair_cards, :hair_is, :string, default: "noresponse"
    change_column :hair_cards, :hair_type, :string, default: "unanswered"
    change_column :hair_cards, :length, :string, default: "unknown"
  end
end
