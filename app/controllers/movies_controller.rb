class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  def index
    # @pagy, @movies = pagy(Movie.all.order(:rating))
    @pagy, @movies = pagy_calendar(Movie.where(rating: %i[poor good outstanding]).order(:rating))
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

  def pagy_calendar_get_vars(collection, vars)
    super
    vars[:local_minmax] ||= my_local_min_max(collection)
    vars
  end

  def pagy_calendar_get_items(collection, pagy)
    collection.where(created_at: pagy.utc_from...pagy.utc_to)
  end

  def my_local_min_max(collection)
    [Time.new(1605, 10, 21, 13, 18, 23, 0), Time.new(2023, 11, 13, 15, 43, 40, 0)]
  end
end
