module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token
    # cookieへの保存（ユーザーの保存）と同時にpermanentメソッドによって自動的にクッキーが20年後に切れる
    cookies.permanent[:remember_token] = remember_token
    # ユーザーの取り出し
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end

  # この処理が何なのかわからない　#
  #　次のメソッドでカレントユーザーが取れてると思っていたけど、これを書かないとエラーを吐く
  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  # ユーザーがサインインしてない場合nilが返り、サインインしていればtrueが返る。
  def current_user?(user)
    user == current_user
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path,  notice: "ログインしてください"
    end
  end
end
