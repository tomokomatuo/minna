class CreateOauthTests < ActiveRecord::Migration[5.2]
  def change
    create_table :oauth_tests do |t|
      t.integer :age
      t.integer :gender
      t.text :image
      t.text :introduction
      t.string :nickname

      t.timestamps
    end
  end
end
