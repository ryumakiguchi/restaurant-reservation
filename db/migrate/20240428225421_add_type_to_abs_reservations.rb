class AddTypeToAbsReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :abs_reservations, :type, :string
  end
end
