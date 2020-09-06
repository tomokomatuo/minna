class OauthTestController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(oauth_test_params)
    if @user.save
      redirect_to oauth_test_path(current_user)
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: current_user.id)
  end

  private
  
  def params_oauth_test
    params.require(:user).permit(:nickname, :image, :gender, :introduction,
                                 :age, :image_cache)
  end
end
