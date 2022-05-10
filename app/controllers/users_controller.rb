class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
skip_before_action :authorized, only: [:new, :create,:destroy]
def new
   @user = User.new
end
def create


   uname = params[:user][:username]
   @temp = User.find_by(username: uname)


   if !@temp.present?
     @user = User.create(params.require(:user).permit(:username,
                                                      :password,:usertype,:fullname,:roll,:phone))
     session[:user_id] = @user.id
     redirect_to '/welcome'
   else
     flash[:notice] = "Error ! Username already exists"
     redirect_to '/new'

   end

end

def index
    @users = User.all
end

def show
end

def destroy
  @user.destroy

  respond_to do |format|
    format.html { redirect_to users_index_path, notice: "User was successfully removed." }
    format.json { head :no_content }
  end
end

  private

  def set_user
    @user = User.find(params[:id])
  end



end