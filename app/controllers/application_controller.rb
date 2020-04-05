class ApplicationController < ActionController::Base
    def index
    end

    def authenticated
        @current_user = User.find_by(id: session[:id])
        if !@current_user 
            # redirect_to '/login'
            format.html { redirect_to '/login', notice: 'User was successfully created.' }
            format.json { render json: "un authenticated", status: :unprocessable_entity }
        end
    end
end
