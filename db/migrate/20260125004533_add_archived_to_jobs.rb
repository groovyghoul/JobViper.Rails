class AddArchivedToJobs < ActiveRecord::Migration[8.1]
  def change
    add_column :jobs, :archived, :boolean, default: false
  end
end
