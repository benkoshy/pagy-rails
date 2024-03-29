class BootstrapMoviesController < ApplicationController

	include Pagy::Backend

	def independent_context
		# for independent context		
		@pagy, @movies = pagy(Movie.all, items: 2)
	end	

	def search
		@q = Movie.ransack(params[:q])
		@pagy, @movies = pagy(@q.result(distinct: true), items: 2)

		respond_to do |format|
			format.html
			format.turbo_stream {render "search"}
		end
	end
end
