class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      @bookmark = Bookmark.new
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy


    @review = Review.find(params[:id])
    puts @review


  @review.destroy!
  redirect_to list_path(@review.list), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
