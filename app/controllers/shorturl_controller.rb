class ShorturlController < ApplicationController
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
		@shorturl = @url.id
		@longurl = @url.longurl
	end


	def edit
	end

	def create
		@url = Shorturl.new(url_params)

	end
	def update
	end
	private

	def url_params
		params.require(:shorturl).permit(:longurl)
	end


end
