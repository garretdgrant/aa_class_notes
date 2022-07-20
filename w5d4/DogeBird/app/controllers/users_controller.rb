class UsersController < ApplicationController
    def index
        # params hash sent from front end
        # @exposes variable to the view 
        @users = User.all
        render json: @users
    end

    def show
        # debugger
        incoming_id = params[:id]
        @user = User.find_by(id: incoming_id)
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            # with prefix user
            # redirect_to user_url(@user.id)
            render json: @user
        else
            render json: @user.errors.full_messages, status: 404
        end
    end


    def update
        @user = User.find_by(id: params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors.full_messages, status: 404
        end
    end

    def destroy
        @user = User.find_by(id: params[:id])
       if @user.destroy
        render json: @user
       end
    end
    
    private
    def user_params
        # strong params
        params.require(:user).permit(:username, :age, :email, :favorite_coin)
    end

end
