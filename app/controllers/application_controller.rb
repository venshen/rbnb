class ApplicationController < ActionController::Base
    # skip_before_action :authenticate_user!, only: :home
    before_action :authenticate_user!
    

    def home
    end
end
