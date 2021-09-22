class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string :confirmer_name,               null: false
      t.string :care_user_name,               null: false
      t.integer :get_up_id,                   null: false
      t.integer :breakfast_id,                null: false 
      t.integer :first_dentifrice_id,         null: false
      t.integer :first_toilet_id,             null: false
      t.integer :lunch_id,                    null: false
      t.integer :second_dentifrice_id,        null: false
      t.integer :second_toilet_id,            null: false
      t.integer :dinner_id,                   null: false
      t.integer :third_dentifrice_id,         null: false
      t.integer :third_toilet_id,             null: false
      t.integer :bath_id,                     null: false
      t.integer :sleep_check_id,              null: false
      t.text :state,                          null: false
      t.references :user,               null: false, foreign_key: true
      t.references :room,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
