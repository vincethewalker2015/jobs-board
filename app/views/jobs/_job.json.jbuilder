json.extract! job, :id, :date, :recruiter, :recruiter_company, :job_title, :permanent_or_contract, :hiring_company, :link, :cv_submitted, :notes, :outcome, :created_at, :updated_at
json.url job_url(job, format: :json)
