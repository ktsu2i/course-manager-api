class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses, id: :uuid do |t|
      t.string :record_key, null: false
      t.string :department, null: false
      t.integer :course_number, null: false
      t.integer :section, null: false
      t.integer :crn, null: false
      t.string :title, null: false
      t.string :class_type, null: false
      t.integer :room_number
      t.boolean :has_secured_room
      t.jsonb :schedule
      t.string :semester, null: false
      t.integer :year, null: false
      t.integer :credits, null: false
      t.string :label, null: false
      t.string :status, default: "new"
      t.string :instructor_id, null: false
      t.text :special_info
      t.text :notes

      t.timestamps
    end
  end
end
