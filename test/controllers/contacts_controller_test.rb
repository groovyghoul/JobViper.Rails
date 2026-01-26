require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
    @job = jobs(:one)
  end

  test "should get new" do
    get new_job_contact_url(@job)
    assert_response :success
  end

  test "should create contact" do
    assert_difference("Contact.count") do
      post job_contacts_url(@job), params: { contact: { name: "New Person", email: "new@example.com", role: "Recruiter" } }
    end

    assert_redirected_to job_url(@job)
  end

  test "should get edit" do
    get edit_job_contact_url(@job, @contact)
    assert_response :success
  end

  test "should update contact" do
    patch job_contact_url(@job, @contact), params: { contact: { name: "Updated", email: "updated@example.com", role: "HR" } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy contact" do
    assert_difference("Contact.count", -1) do
      delete job_contact_url(@job, @contact)
    end

    assert_redirected_to job_url(@job)
  end
end
