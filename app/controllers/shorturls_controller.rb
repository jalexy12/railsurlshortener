class ShorturlsController < ApplicationController
	def index
		@shorturls = Shorturl.all
	end

	def show 
		unless @shorturl = Shorturl.find_by(id: params[:id])
			render 'no_urls_found'
		end
	end

	def new 
		@url = Shorturl.new
	end


	def edit
	end

	def create
		@url = Shorturl.new(url_params)
		if @url.save
			flash[:notice] = "Entry created successfully"
			redirect_to action: "index", controller: "shorturls"
		else
			render "new"
		end
	end

	def update
	end
	private

	def url_params
		params.require(:shorturl).permit(:longurl)
	end


end
