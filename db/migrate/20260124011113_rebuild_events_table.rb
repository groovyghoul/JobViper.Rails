class RebuildEventsTable < ActiveRecord::Migration[7.1]
  def change
    # Drop the old "results" table if it exists
    drop_table :results, if_exists: true

    # Create the new "events" table correctly
    create_table :events do |t|
      t.references :job, null: false, foreign_key: true
      t.string :event_type
      t.date :event_date
      t.text :notes

      t.timestamps
    end
  end
end
