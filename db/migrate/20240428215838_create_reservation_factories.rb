class CreateReservationFactories < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_factories do |t|

      t.timestamps
    end
  end
end
