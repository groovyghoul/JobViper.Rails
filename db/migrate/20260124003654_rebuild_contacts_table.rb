class RebuildContactsTable < ActiveRecord::Migration[8.1]
  def change
    # Forcefully remove the old table if it's there
    drop_table :contacts, if_exists: true

    # Rebuild it from scratch with the correct columns
    create_table :contacts do |t|
      t.references :job, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
