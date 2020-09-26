class SessionsController < ApplicationController

    def create
        @user = User.find_by(name: params[:user][:name])
        # binding.pry
        if @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
        else
            render 'users/new'
        end
    end

end