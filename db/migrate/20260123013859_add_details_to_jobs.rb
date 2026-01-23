class AddDetailsToJobs < ActiveRecord::Migration[8.1]
  def change
    add_column :jobs, :location, :string
    add_column :jobs, :salary, :string
    add_column :jobs, :description, :text
  end
end
