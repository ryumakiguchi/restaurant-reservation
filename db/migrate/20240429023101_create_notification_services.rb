class CreateNotificationServices < ActiveRecord::Migration[7.0]
  def change
    create_table :notification_services do |t|

      t.timestamps
    end
  end
end
