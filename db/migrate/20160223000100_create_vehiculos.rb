class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :marca
      t.string :modelo
      t.integer :anio

      t.timestamps null: false
    end
  end
end
