class JobsController < ApplicationController

	def index
		@jobs = Job.all

		render 'jobs/index'
	end

	def show
		@job = Job.find_by(id: params[:id])

		render json: @job
	end

	def new
		@job = Job.new

	end

	def create
		@job = Job.new(params_job)

		@job.save

		render 'jobs/create'
	end


	private

	def params_job
		params.require(:job).permit(:url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id)
	end
end
