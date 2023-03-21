class BootstrapMoviesController < ApplicationController

	include Pagy::Backend

	def independent_context
		# for independent context		
		@pagy, @movies = pagy(Movie.all, items: 2)
	end	
end
