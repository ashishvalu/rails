class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :name, limit: 10
      t.integer :photoble_id
      t.string :photoble_type

      t.timestamps
    end
  end
end
