class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date_and_time, null: false
      t.string   :location, null: false
      t.string   :notes
      t.references :user, index: true, foreign_key: true, null: false
      t.references :fruit, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
