class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end  
  
  def show
    # ユーザのデータを1件取得し、インスタンス変数へ渡します。
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
    @users = User.all
  end
  
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image,:email)
  end
  
end
