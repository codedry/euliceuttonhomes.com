class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :subject
      t.string :phone
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
