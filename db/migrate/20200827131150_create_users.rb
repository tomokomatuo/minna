class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :gender
      t.integer :age
      t.text :introduction
      t.text :image

      t.timestamps
    end
  end
end
