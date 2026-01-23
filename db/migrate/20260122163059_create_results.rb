class CreateResults < ActiveRecord::Migration[8.1]
  def change
    create_table :results do |t|
      t.references :job, null: false, foreign_key: true
      t.date :date
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
