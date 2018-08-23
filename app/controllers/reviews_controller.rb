class ReviewsController < ApplicationController
  before_action :authorized

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = current_user.reviews.build
  end

  def create
    @review = current_user.reviews.build(review_params)

    respond_to do |format|
      if @review.save
        format.html {redirect_to review_path(@review), notice: 'Your review was successfully created.' }
        format.json {render :show, status: :created, location: @review }
      else
        format.html {render :new}
        format.json {render json: @review.errors, status: :unprocessable_entity}
      end
    end 
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
      if @review.update(review_params)
        redirect_to review_path(@review)
      else
        render :edit
      end
  end

  def destroy
    Review.destroy(params[:id])
    redirect_to reviews_path #i want to redirect to the current user's page but i need to know more about authentication to do that.
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
  # this comment marks the end of the class
end
