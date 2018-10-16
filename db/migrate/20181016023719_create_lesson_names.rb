class CreateLessonNames < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_names do |t|
      t.string :title
      t.timestamps
    end
  end
end
