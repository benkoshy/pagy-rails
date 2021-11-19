class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  def index
    # @pagy, @movies = pagy(Movie.all.order(:rating))

    # allow sensible defaults
    @calendar, @pagy, @movies = pagy_calendar(Movie.where(rating: %i[poor good outstanding]).order(:rating),
                                              year:  { size:  [1, 1, 1, 1]},
                                              month: { size:  [0, 12, 12, 0]},
                                              pagy:  { items: 10})
  end

  # GET /movies/1 or /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1 or /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movie_params
    params.require(:movie).permit(:name, :rating)
  end

  def pagy_calendar_filtered(collection, utc_from, utc_to)
    collection.where(created_at: utc_from...utc_to)
  end

  def pagy_calendar_minmax(collection)
    ordered_collection = collection.order(:created_at)
    min_time = ordered_collection.first.created_at
    max_time = ordered_collection.last.created_at
    return [min_time.to_time, max_time.to_time]
  end
end
