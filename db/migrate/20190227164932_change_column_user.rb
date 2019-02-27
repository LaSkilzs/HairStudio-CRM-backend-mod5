class ChangeColumnUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :role, :string, default: "client"
    change_column :users, :image, :string, default: 'https://cdn5.vectorstock.com/i/1000x1000/30/59/black-women-avatar-vector-21843059.jpg'
  end
end
