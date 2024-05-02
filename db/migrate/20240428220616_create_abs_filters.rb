class CreateAbsFilters < ActiveRecord::Migration[7.0]
  def change
    create_table :abs_filters do |t|

      t.timestamps
    end
  end
end
