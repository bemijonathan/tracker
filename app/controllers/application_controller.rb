class ApplicationController < ActionController::Base
    before_action :authenticated
    def index
    end

    def authenticated
        user = User.find_by(id: session[:id])
        if user
            @user_details = user
            @current_user = user.slice(:id,  :email, :admin)
        end
    end

    def search
        @transaction = Transaction.find_by(tracking_id: params[:q])
    end

    def about
    end
    
    def contact
    end

    def redirect
        if @current_user === nil
            flash[:notice] = 'You Have To Be Logged In '
            redirect_to '/login'
        end
    end
end
