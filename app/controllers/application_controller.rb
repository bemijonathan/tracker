class ApplicationController < ActionController::Base
    before_action :authenticated
    def index
    end

    def authenticated
        user = User.find_by(id: session[:id])
        @current_user = user.slice(:id,  :email)
    end
end
