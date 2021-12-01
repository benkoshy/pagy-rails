class SemanticMoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  def index
    movie_collection = Movie.where(rating: %i[poor good outstanding]).order(:rating)

    if params[:calendar]
      @calendar, @pagy, @movies = pagy_calendar(movie_collection, year:   { size: [1, 1, 1, 1] },
                                                month:  { size: [0, 12, 12, 0], format: '%b' },
                                                pagy:   { items: 10 },
                                                active: params[:calendar])

    else
      @pagy, @movies = pagy(movie_collection)
    end
  end

  private

  def pagy_calendar_period(collection)
    minmax = collection.pluck('MIN(created_at)', 'MAX(created_at)').first
    minmax.map { |time| Time.parse(time).in_time_zone.to_time }
  end

  def pagy_calendar_filter(collection, from, to)
    collection.where(created_at: from...to)  # 3-dots range excluding the end value
  end


end
