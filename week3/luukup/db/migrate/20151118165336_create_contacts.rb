class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :cell_phone
      t.string :home_phone
      t.string :email
      t.string :birthday
      t.string :website

      t.timestamps null: false
    end
  end
end
