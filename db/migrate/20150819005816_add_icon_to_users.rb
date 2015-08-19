class AddIconToUsers < ActiveRecord::Migration
  def change
    add_column :users, :icon, :binary
    add_column :users, :icon_content_type, :string
  end
end
