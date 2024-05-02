class CreateReservationManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_managers do |t|

      t.timestamps
    end
  end
end
