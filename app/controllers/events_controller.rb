class EventsController < ApplicationController
  before_action :set_job
  before_action :set_event, only: [ :edit, :update, :destroy ]

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

  def edit
    render layout: false
  end

  def update
    if @event.update(event_params)
      redirect_to job_path(@job), status: :see_other, notice: "Event updated!"
    else
      render :edit, status: :unprocessable_entity, layout: false
    end
  end

  def destroy
    @event.destroy
    redirect_to job_path(@job), status: :see_other, notice: "Event removed."
  end

  private

  def set_job
    @job = Job.find(params[:job_id])
  end

  def set_event
    @event = @job.events.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:event_type, :event_date, :notes)
  end
end
