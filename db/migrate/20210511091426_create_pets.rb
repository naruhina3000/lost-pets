class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.date :date
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
