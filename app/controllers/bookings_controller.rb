class BookingsController < ApplicationController
    def index
        user = current_user
        @bookings = user.bookings
    end

    def new
        @item = Item.find(params[:item_id])
        @booking = Booking.new # needed to instantiate the fookingend
    end

    def create
        p booking_params
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item_id = params[:item_id]
    @booking.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to bookings_path
    end

    private

    def booking_params
        params.require(:booking).permit(:booking_start, :booking_end)
    end
end
