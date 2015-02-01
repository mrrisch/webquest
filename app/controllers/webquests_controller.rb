class WebquestsController < ApplicationController
	before_action :find_webquest, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_lehrer!, except: [:index, :show]

	def index
		if params[:fach].blank?
			@webquests = Webquest.all.order("created_at DESC")
		else
			@fach_id = Fach.find_by(name: params[:fach]).id
			@webquests = Webquest.where(fach_id: @fach_id).order("created_at DESC")
		end
	end

	def show
	end

	def new
		@webquest = current_lehrer.webquests.build
	end

	def create 
		@webquest = current_lehrer.webquests.build(webquest_params)

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
		params.require(:webquest).permit(:name, :beschreibung, :fach, :image, :fach_id, :anhang)
	end

	def find_webquest
		@webquest = Webquest.find(params[:id])
	end
end
