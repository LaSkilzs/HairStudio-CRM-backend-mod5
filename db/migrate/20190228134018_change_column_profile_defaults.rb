class ChangeColumnProfileDefaults < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :street_2, :string, default: "none"

  end

end
