class AllocationsController < ApplicationController
	def index
		@allocations = Allocation.all
	end

	def create
		allocation = Allocation.new(user.id: params[:user_id], project_id: params[:project_id])
		if allocation.save
			redirect_to user_path(params[:user_id]), notice: "éxito"
		else
			redirect_to user_path(params[:user_id]), alert: "No se a podido asignar"
		end
	end
end
