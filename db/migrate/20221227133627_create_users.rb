class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profession
      t.string :contect
      t.text :address

      t.timestamps
    end
  end
end
