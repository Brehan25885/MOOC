class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :birth_date, :date
    add_column :users, :profile_pic, :string
  end
end
