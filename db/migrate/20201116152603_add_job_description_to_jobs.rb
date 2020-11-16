class AddJobDescriptionToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :job_description, :text
  end
end
