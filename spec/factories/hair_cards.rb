FactoryBot.define do
  factory :hair_card do
    suffered_from_hair_loss? { false }
    been_diagnosed_with_alopecia? { false }
    take_any_medication? { false }
    been_pregnant_in { "MyString" }
    _the_last_6_months? { false }
    suffer_from_psoriasis_to_the_scalp? { false }
    suffer_from_ezcema_to_the_scalp? { false }
    have_a_sensitive_scalp? { false }
    any_known_allergies? { false }
    which_ones? { "MyText" }
    frequently_swim_or_go_to_the_gym? { false }
    currently_have_colour_in_your_hair? { false }
    which { "MyString" }
    _method? { "MyText" }
    last_time_colored? { "MyText" }
    used_hair_extensions_before? { false }
    which_type_did_you_use? { "MyText" }
    have_a_perm_or_relaxer? { false }
    last_time_you_had_a_relaxer? { false }
    wash_frequency? { "MyText" }
    hair_type { "MyText" }
    hair_is { "MyText" }
    lenght { "MyText" }
    user { nil }
    hair_personality { nil }
  end
end
