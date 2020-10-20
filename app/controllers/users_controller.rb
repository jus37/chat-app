class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path #redirect_toは一度ルーティングを通るため後ろの記法はprefixかURIパターンになる
    else
      render :edit #renderは直接ビューファイルを指定するためアクションを選択する
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
