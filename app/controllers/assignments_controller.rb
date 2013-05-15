class AssignmentsController < ApplicationController
	def index
		today = Date.today
		@assignments = Assignment.where(":date >= #{today}")
	end

	def new
		@assignment = Assignment.new
	end

	def create
		@assignment = Assignment.new(params[:id])
		if @assignment.save
			flash[:notice] = "The assignment has been added"
			redirect_to assignments_path
		else
			flash[:notice] = "Sorry but your assignment wasn't added."
			render :new
		end
	end
end
