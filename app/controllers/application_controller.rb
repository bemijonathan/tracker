class ApplicationController < ActionController::Base
    before_action :authenticated
    def index
    end

    def authenticated
        user = User.find_by(id: session[:id])
        if user
            @user_details = user
            @current_user = user.slice(:id,  :email)
        end
    end
end
