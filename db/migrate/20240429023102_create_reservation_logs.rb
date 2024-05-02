class CreateReservationLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_logs do |t|

      t.timestamps
    end
  end
end
