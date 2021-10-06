class UsersController < ApplicationController
        def show
          @user = User.find(params[:id]) 
        end
        def invite
          @user =User.find(current_user.id)
        end
      
end
