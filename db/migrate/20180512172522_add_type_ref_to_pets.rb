class AddTypeRefToPets < ActiveRecord::Migration[5.1]
  def change
    add_reference :pets, :type, foreign_key: true
  end
end
