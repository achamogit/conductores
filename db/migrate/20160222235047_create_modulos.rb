class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :name
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
