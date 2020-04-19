class ApplicationController < ActionController::Base
    before_action :authenticated 
    # skip_before_action :verify_authenticity_token
    skip_forgery_protection

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

    def sendmailpage
        if @current_user != nil and @user_details.admin
            
        else
            redirect_to '/login'
        end
    end

    def sentmail
        user = User.find_by(email: params[:email])
        if user.present?
            LocationMailer.with(name: params[:name], email: user[:email], content: params[:content]).remind_location.deliver_now
            puts("************************************")
            puts("Help get the email")
            puts("************************************")

            # redirect_to '/'
        else
            puts("************************************")
            puts("************************************")
            flash[:notice] = 'user not found'
            redirect_to '/sendmailpage'
        end
    end

    def redirect
        if @current_user === nil
            flash[:notice] = 'You Have To Be Logged In '
            redirect_to '/login'
        end
    end

    def logout
        session[:id] = nil
        redirect_to '/'
    end
end
