class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :full_name
      t.string :company
      t.string :telephone
      t.string :email
      t.integer :age
      t.string :address
      t.boolean :sex
      t.datetime :birthday

      t.timestamps
    end
  end
end
