class CreateShelters < ActiveRecord::Migration[5.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.text :describe

      t.timestamps
    end
  end
end
