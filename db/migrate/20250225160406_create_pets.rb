class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.string :specie
      t.date :date

      t.timestamps
    end
  end
end
