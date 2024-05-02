class CreateSizeFilters < ActiveRecord::Migration[7.0]
  def change
    create_table :size_filters do |t|

      t.timestamps
    end
  end
end
