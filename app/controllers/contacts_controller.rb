class ContactsController < ApplicationController
  before_action :set_job
  before_action :set_contact, only: [ :edit, :update, :destroy ]

  def new
    @contact = @job.contacts.new
    render layout: false
  end

  def create
    @contact = @job.contacts.new(contact_params)
    if @contact.save
      redirect_to job_path(@job), status: :see_other, notice: "Contact added!"
    else
      render :new, status: :unprocessable_entity, layout: false
    end
  end

  def edit
    render layout: false
  end

  def update
    if @contact.update(contact_params)
      redirect_to job_path(@job), status: :see_other, notice: "Contact updated!"
    else
      render :edit, status: :unprocessable_entity, layout: false
    end
  end

  def destroy
    @contact.destroy
    redirect_to job_path(@job), status: :see_other, notice: "Contact removed."
  end

  private

  def set_job
    @job = Job.find(params[:job_id])
  end

  def set_contact
    @contact = @job.contacts.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :role)
  end
end
