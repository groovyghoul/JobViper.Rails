class CreateJobs < ActiveRecord::Migration[8.1]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.date :applied_date
      t.string :status
      t.string :source

      t.timestamps
    end
  end
end
