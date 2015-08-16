class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :price_30_min
      t.integer :price_60_min
      t.integer :price_120_min
      t.integer :price_additional_10_min
      t.string :description
      t.integer :therapist_id

      t.timestamps null: false
    end
  end
end
