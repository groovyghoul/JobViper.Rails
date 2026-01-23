class CreateContacts < ActiveRecord::Migration[8.1]
  def change
    create_table :contacts do |t|
      t.references :job, null: false, foreign_key: true
      t.date :date
      t.string :contact_type
      t.string :person
      t.text :notes

      t.timestamps
    end
  end
end
