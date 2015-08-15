class AddColumnsForTherapistToUsers < ActiveRecord::Migration
  def change
    add_column :users, :licence, :string
    add_column :users, :carrer, :text
    add_column :users, :introduction, :string
    add_column :users, :shop_address, :string
    add_column :users, :visit_available_place, :string
    add_column :users, :working_hours, :text
  end
end
