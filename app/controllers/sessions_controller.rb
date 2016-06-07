class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #　これでUserモデルの主キーが取れる
      sign_in user
      #　リダレクトでuser_panelのindexへ
      redirect_to  user_panels_path
    else
      flash.now[:error] = 'eメールかパスワードがまちがってまする'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
