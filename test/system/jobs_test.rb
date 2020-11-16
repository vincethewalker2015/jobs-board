require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    check "Cv submitted" if @job.cv_submitted
    fill_in "Date", with: @job.date
    fill_in "Hiring company", with: @job.hiring_company
    fill_in "Job title", with: @job.job_title
    fill_in "Link", with: @job.link
    fill_in "Notes", with: @job.notes
    fill_in "Outcome", with: @job.outcome
    fill_in "Permanent or contract", with: @job.permanent_or_contract
    fill_in "Recruiter", with: @job.recruiter
    fill_in "Recruiter company", with: @job.recruiter_company
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    check "Cv submitted" if @job.cv_submitted
    fill_in "Date", with: @job.date
    fill_in "Hiring company", with: @job.hiring_company
    fill_in "Job title", with: @job.job_title
    fill_in "Link", with: @job.link
    fill_in "Notes", with: @job.notes
    fill_in "Outcome", with: @job.outcome
    fill_in "Permanent or contract", with: @job.permanent_or_contract
    fill_in "Recruiter", with: @job.recruiter
    fill_in "Recruiter company", with: @job.recruiter_company
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
