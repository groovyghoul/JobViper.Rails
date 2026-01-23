class AddContactInfoToContacts < ActiveRecord::Migration[8.1]
  def change
    add_column :contacts, :email, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :role, :string
  end
end
