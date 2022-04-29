class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Item.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @item = @booking.item
    @review.booking = @booking
    if @review.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def show

  end

  private

  def review_params
    params.require(:review).permit(:stars, :comment, :booking_id)
  end
  def find_review
    @review = Review.find(params[:id])
  end

end
