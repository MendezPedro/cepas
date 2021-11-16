class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :only_admin

    def only_admin
        if user_signed_in?
            redirect_to root_path, alert: "maldito peter" and 
            return if !current_user.admin
        end
    end
    
end
