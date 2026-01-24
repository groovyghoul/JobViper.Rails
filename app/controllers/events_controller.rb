class EventsController < ApplicationController
  before_action :set_job

  def new
    @event = @job.events.new
    render layout: false
  end

  def create
    @event = @job.events.new(event_params)

    if @event.save
      redirect_to job_path(@job), status: :see_other, notice: "Event added!"
    else
      render :new, status: :unprocessable_entity, layout: false
    end
  end

  private

  def set_job
    @job = Job.find(params[:job_id])
  end

  def event_params
    params.require(:event).permit(:event_type, :event_date, :notes)
  end
end
