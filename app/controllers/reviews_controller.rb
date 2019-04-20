class ReviewsController < ApplicationController
	def create
        @movie = Movie.find(params[:movie_id])
        @review = @Movie.reviews.create(review_params)
        redirect_to article_path(@movie)
    end
    
    def destroy
        @movie = Movie.find(params[:movie_id])
        @review = @movie.reviews.find(params[:id])
        @review.destroy
        redirect_to article_path(@Movie)
    end
    
    private
    def comment_params
        params.require(:review).permit(:reviewer, :body)
    end
end
