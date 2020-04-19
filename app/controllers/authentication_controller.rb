class AuthenticationController < ApplicationController

    # skip_before_action :verify_authenticity_token
    # skip_before_action :verify_authenticity_token
    

    def login
    end

    def login_user
        respond_to do |format|  ## Add this
            @user = User.find_by(email: params[:email])
            if @user.present? && @user.password === params[:password]
                session[:id] = @user.id
                format.html { redirect_to '/',  notice: 'Login Successfull'}
                format.json { render json: {message: "successs"} ,  status: :ok  }
                # redirect_to '/'
            else
                format.html { redirect_to '/login',  notice: 'unkwon user'}
                format.json { render json: {message: "error"} ,  status: :unprocessable_entity  }
            end
        end 
        
    end

    def signup
    end


end
