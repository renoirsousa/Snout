class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :describe
      t.string :age

      t.timestamps
    end
  end
end
