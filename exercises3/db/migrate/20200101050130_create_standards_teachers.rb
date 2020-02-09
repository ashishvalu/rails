class CreateStandardsTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :standards_teachers do |t|
      t.references :standard, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
