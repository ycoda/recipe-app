module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token
    # permanentメソッドによって自動的にクッキーが20年後に切れる
    cookies.permanent[:remember_token] = remember_token
    # update_attributeを使えば検証をすり抜けて更新することができる
    # ページの移動ではユーザーやパスワードは与えられないので
    # このメソッドを使う必要がある
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end
=begin

1.トークンを新規作成する
2.暗号化されていないトークンをブラウザのcookieに保存する
3.暗号化したトークンをDBに保存する
4.与えられたユーザーを現在のユーザーに設定する。

  上のコードでupdate_attributeを使用してトークンを
  保存している点に注目してください。
  このメソッドを使用すれば検証をすり抜けて単一の
  属性を更新することができます。ページの移動では
  ユーザーのパスワードやパスワード確認は与えられ
  ないのでこのメソッドを使用する必要があります。

・・・要素代入
・説明を読んだが意味がわからん。普通に引数渡すのと
  何が違うのかがわからん。
  http://ztbuz.hateblo.jp/entry/2013/12/29/024103

  とりあず、
currentのuser情報を扱うときは、
current_user=(user)
みたいにするってことでいいかな。
http://kusu.hateblo.jp/entry/2015/06/12/044820

=end

  def current_user=(user)
      @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])

    # 現在ログインしているユーザーを返す
    @current_user ||= User.find_by(remember_token: remember_token)
  end


=begin
      あるユーザーに対してcurrent_userが初めて呼びだされる
      場合は（orの右側）find_byメソッドを呼ぶけれども、二回目以降は
      DBにアクセスせずに（orの左側）@current_userを返す。
      いずれの場合もユーザーがwebサイトにアクセスすると
      find_byは最低1回は呼び出されることになる。
=end

  # ユーザーがサインインしてない場合nilが返される。
  # サインインしていればtrueが返る。

# find と find_by の違い エラーの吐き出し方が違う
# find はActiveRecord::RecordNotFound が投げられる。
# find_byはnilが返る
# システムの挙動として、Recordが見つからないことが
# 織り込み済みの場合は find_by を使って分岐か何かでnilを
# 処理する。見つからないのが異常なら find を使って
# エラーを投げて404ページを表示する。

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

=begin
  def destroy
    self.current_user = nil
    cookies.delete(:remember_token)
  end
=end
