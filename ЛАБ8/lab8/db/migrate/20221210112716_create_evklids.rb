class CreateEvklids < ActiveRecord::Migration[7.0]
  def change
    create_table :evklids do |t|
      t.integer :num1
      t.integer :num2
      t.string :result

      t.timestamps
    end
  end
end
