class CreateLecturesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures_users do |t|
      t.integer :lecture_id
      t.integer :user_id
    end
  end
end
