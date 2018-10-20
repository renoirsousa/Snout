class AddGardianToRegisters < ActiveRecord::Migration[5.1]
  def change
    add_reference :registers, :guardian, foreign_key: true
  end
end
