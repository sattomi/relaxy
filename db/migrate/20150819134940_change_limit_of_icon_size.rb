class ChangeLimitOfIconSize < ActiveRecord::Migration
  def change
  	change_column :users, :icon, :binary, :limit => 10.megabyte
  end
end
