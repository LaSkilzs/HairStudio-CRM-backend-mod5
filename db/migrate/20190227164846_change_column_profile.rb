class ChangeColumnProfile < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :birthday, :date
  end
end
