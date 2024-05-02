class CreateAbsReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :abs_reservations do |t|
      t.date :date
      t.time :time
      t.integer :party_size
      t.string :customer_name
      t.string :dining_area

      t.timestamps
    end
  end
end
