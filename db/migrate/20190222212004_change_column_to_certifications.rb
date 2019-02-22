class ChangeColumnToCertifications < ActiveRecord::Migration[5.2]
  def change
    change_column :certifications, :license_id, :string
    add_column :certifications, :hours_completed, :integer
  end
end
