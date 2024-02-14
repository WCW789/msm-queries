class MoviesController < ApplicationController
  def movie_home
    render({ :template => "misc_templates/movie_templates/movie_home" })
  end

  def show
    @the_id = params.fetch("the_id")

    @matching_record = Movie.where({:id => @the_id})
    @movie = @matching_record.at(0)

    @title = @movie.title
    @year = @movie.year
    @duration = @movie.duration
    @description = @movie.description
    @image = @movie.image
    @created_at = @movie.created_at
    @updated_at = @movie.updated_at
    @director_id = @movie.director_id

    render({ :template => "misc_templates/movie_templates/movie_details" })
  end
end
