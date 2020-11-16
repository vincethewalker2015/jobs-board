class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.datetime :date
      t.string :recruiter
      t.string :recruiter_company
      t.string :job_title
      t.string :permanent_or_contract
      t.string :hiring_company
      t.text :link
      t.boolean :cv_submitted
      t.text :notes
      t.string :outcome

      t.timestamps
    end
  end
end
