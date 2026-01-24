class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]

  # GET /jobs or /jobs.json
  def index
    @jobs = Job.includes(:contacts, :events).order(created_at: :desc)
    if params[:filter] == "hide_rejected"
      # Adjust 'Rejected' to match exactly how you store it in your DB
      @jobs = @jobs.where.not(status: [ "Rejected", "rejected", "Declined", "declined" ])
    end
    # @jobs = Job.all

    # Logic for stats
    @total_count = @jobs.count
    @interviewing_count = @jobs.where(status: "Interviewing").count
    @offers_count = @jobs.where(status: "Offer Received").count

    # Calculate success rate (avoiding division by zero)
    @success_rate = @total_count.positive? ? ((@offers_count.to_f / @total_count) * 100).round(1) : 0
  end

  # GET /jobs/1 or /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs or /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: "Job was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @job.destroy!

    respond_to do |format|
      format.html { redirect_to jobs_path, notice: "Job was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.expect(job: [ :company, :title, :applied_date, :status, :source, :location, :salary, :description ])
    end
end
