class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone, limit: 15
      t.date :brith_date
      

      t.timestamps
    end
  end
end
