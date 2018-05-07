class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :content
      t.string :file
      t.integer :course_id

      t.timestamps
    end
  end
end
