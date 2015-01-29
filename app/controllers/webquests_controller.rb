class WebquestsController < ApplicationController
	before_action :find_webquest, only: [:show, :edit, :update, :destroy]

	def index
		@webquests = Webquest.all.order("created_at DESC")
	end

	def show
	end

	def new
		@webquest = Webquest.new
	end

	def create 
		@webquest = Webquest.new(webquest_params)

		if @webquest.save 
			redirect_to @webquest, notice: "Ihr Webquest wurde erfolgreich erstellt"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @webquest.update(webquest_params)
			redirect_to @webquest, notice: "Der Webquest wurde erfolgreich aktualisiert" 
		else 
			render 'edit'
		end
	end

	def destroy
		@webquest.destroy
		redirect_to root_path
	end


	private

	def webquest_params
		params.require(:webquest).permit(:name, :beschreibung, :fach)
	end

	def find_webquest
		@webquest = Webquest.find(params[:id])
	end
end
