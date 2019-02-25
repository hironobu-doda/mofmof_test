class CreatePropertys < ActiveRecord::Migration[5.0]
  def change
    create_table :propertys do |t|
      t.string :name
      t.integer :money
      t.string :address
      t.integer :age
      t.text :content

      t.timestamps
    end
  end
end
