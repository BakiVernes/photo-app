class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
