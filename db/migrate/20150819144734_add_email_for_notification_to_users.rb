class AddEmailForNotificationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_for_notification, :string
  end
end
