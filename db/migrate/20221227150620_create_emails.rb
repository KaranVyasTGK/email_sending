class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :to
      t.text :title
      t.text :body
      t.boolean :is_star, default: false

      t.timestamps
    end
  end
end
