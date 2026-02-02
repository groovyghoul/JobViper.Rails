class CreateAttachments < ActiveRecord::Migration[8.1]
  def change
    create_table :attachments do |t|
      t.references :job, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
