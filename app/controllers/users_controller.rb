class UsersController < ActionController::Base
    # skip_before_action :authenticate_user!, only: :home

    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end
end
