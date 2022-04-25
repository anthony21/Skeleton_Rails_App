class SessionsController < ApplicationController
    def destroy 
        if Current.user.present?
         session[:user_id] = nil 
         redirect_to root_path, notice: "Logged Out"
        else
            redirect_to root_path
        end
    end

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in Successfully"
        else
            flash[:alert] = "Invalid Email or password"
            render :new 
        end
    end
end