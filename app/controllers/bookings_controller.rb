class BookingsController < ApplicationController
    def index
        user = current_user
        @bookings = user.bookings
    end
    
    def create
    @booking = Booking.new(booking_params)
    @booking.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to booking_path(@booking)
    end

    private

    def booking_params
        params.require(:booking).permit(:user_id, :item_id, :booking_start, :booking_end)
    end
end
