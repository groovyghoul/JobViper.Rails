class ContactsController < ApplicationController
  before_action :set_job

  def new
    @contact = @job.contacts.new
    render layout: false
  end

  def create
    @contact = @job.contacts.new(contact_params)

    if @contact.save
      # status: :see_other tells Turbo to redirect the whole page
      redirect_to job_path(@job), status: :see_other, notice: "Contact added!"
    else
      # If validation fails, stay in the frame but don't render the full application layout
      render :new, status: :unprocessable_entity, layout: false
    end
  end

  private

  def set_job
    @job = Job.find(params[:job_id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :role)
  end
end
