class CreateWrappers < ActiveRecord::Migration[7.0]
  def change
    create_table :wrappers do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
