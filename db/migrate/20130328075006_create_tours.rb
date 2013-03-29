class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :registr
      t.date :date_of_departure
      t.string :client
      t.decimal :price
      t.references :employee
      t.references :trend

      t.timestamps
    end
    
    add_index :tours, :trend_id
    add_index :tours, :employee_id
  end
end
