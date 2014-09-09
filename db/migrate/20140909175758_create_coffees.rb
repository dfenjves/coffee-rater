class CreateCoffees < ActiveRecord::Migration
  def up
    create_table "coffees" do |t|
      t.string :name
      t.string :grind
      t.string :tamp
      t.integer :rating
      t.text :notes
      t.timestamps
    end
  end

  def down
    drop_table "coffees"
  end
end
