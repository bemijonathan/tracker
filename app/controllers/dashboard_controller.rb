class DashboardController < ApplicationController
    before_action :redirect
    def index
        @transactions = Transaction.where(user_id: @current_user[:id])
    end
end
