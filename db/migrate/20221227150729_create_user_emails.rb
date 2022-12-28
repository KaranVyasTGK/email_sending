class CreateUserEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_emails do |t|
      t.references :user, null: false, foreign_key: true
      t.references :email, null: false, foreign_key: true

      t.timestamps
    end
  end
end
