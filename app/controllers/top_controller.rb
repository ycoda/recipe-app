class TopController < ApplicationController
#. before_action :correct_user, only: :index
  def index
    # @user_panel = UserPanel.find(1)
    # @user_panel = UserPanel.select("picture")
    # @user_panel = UserPanel.find(:all)
    @user_panel = UserPanel.where("picture not ?", nil)
    #. @user_panel.save #saveできない　#relationの関係がどうと言われる
  end

  def show
    @user_panel = UserPanel.find(params[:id])
    # トップページに表示する処理
    ### 現在の書き方だと１ユーザの投稿全部なので
    ###　最新の時刻順で全てのユーザーから取れるように書く
    # @user_panel = UserPanel.where("picture not ?", nil).pluck(:picture)

### right code of get list
    # @user_panel = UserPanel.where("picture not ?", nil)

    # @user_panels.each do |p|
    #   p.picture
    # end

    # u = @user_panel.picture.current_path(/[0-9]/)
    # @user_panel.find(u)

    # @user_panel = @user_panel[0]

    # @user_panel = @user_panel.find_by_picture(@user_panel)
    # カレントレシピを取る処理

###.　right code #　ただし、staticな取り方
    # @user_panel = UserPanel.where("picture not ?", nil)
    # @user_panel = @user_panel.find_by(id: 8)

  end
=begin
  private
    def correct_user
      @user_panel = current_user.user_panels.find(params[:id])
    rescue
      redirect_to user_panels_path
    end
      #@user_panel = current_user.user_panels.find_by(id: params[:user_id])

      #@user_panel = .find_by(id: params[:id])
=end
end
