require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
    @job = jobs(:one)
  end

  test "should get new" do
    get new_job_event_url(@job)
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post job_events_url(@job), params: { event: { event_date: @event.event_date, event_type: @event.event_type, notes: @event.notes } }
    end

    assert_redirected_to job_url(@job)
  end

  test "should get edit" do
    get edit_job_event_url(@job, @event)
    assert_response :success
  end

  test "should update event" do
    patch job_event_url(@job, @event), params: { event: { event_date: @event.event_date, event_type: "Follow-up", notes: @event.notes } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete job_event_url(@job, @event)
    end

    assert_redirected_to job_url(@job)
  end
end
