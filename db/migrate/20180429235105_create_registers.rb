class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :age
      t.string :email
      t.string :phone
      t.string :occupation
      t.string :address
      t.text :about

      t.timestamps
    end
  end
end
