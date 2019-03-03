class ChangeColumnCertification < ActiveRecord::Migration[5.2]
  def change
    change_column :certifications, :license, :boolean, default: false
    change_column :certifications, :renewal, :date, default: -> { 'CURRENT_TIMESTAMP' }
    change_column :certifications, :license_id, :string, default: "none"
    change_column :certifications, :hours_completed, :integer, default: 0
  end
end
