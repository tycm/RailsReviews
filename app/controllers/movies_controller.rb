class MoviesController < ApplicationController
	def index
        @movies = Movie.all
    end
    def show
        @movie = Movie.find(params[:id])
    end
    def new
        @movie = Movie.new
    end
    
    def create
        @movie = Movie.new(movie_params)
        
        if @movie.save
            redirect_to @movie
        else
            render 'new'
        end
    end
    def edit
        @movie = Movie.find(params[:id])
    end
    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to @movie
        else
            render 'edit'
        end
    end
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to articles_path
    end
end

private 
    def article_params
        params.require(:article).permit(:title, :text)
    end
