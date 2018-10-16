class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :teacher_id
      t.integer :student_id
      t.integer :lesson_names_id
      t.timestamps
    end
  end
end
