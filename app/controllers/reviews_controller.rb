class ReviewsController < ApplicationController

before_action :set_bar

  def new
   @review = Review.new
  end

  def create
    @review = @bar.reviews.build(review_params)
    if @review.save
      redirect_to bar_path(@bar)
    else
      render :new
    end

  end



private

  def review_params
    params.require(:review).permit(:title, :content)
  end

  def set_bar
    @bar = Bar.find(params[:bar_id])
  end

end
