class UserPanelsController < ApplicationController
  #before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def index
    @user_panel = UserPanel.all
  end

  def show
    @user_panel = UserPanel.find(params[:id])
    #@user_panel = UserPanel.new(user_id: @user)
  end

  def new
    @user_panel = UserPanel.new
  end

  def create
    #@current_user = User.find(params[:id])
    # DBから型をとる
    # VIEWがインスタンス変数を使う
    #@user_panel = UserPanel.find(params[:user_id])
    @user_panel =  UserPanel.new(user_panel_params)

    # VIEWから取れたものをDBへ保存
    if @user_panel.save
      flash[:success] = "ようこそ hello world"
      #redirect_to user_panel_path(user_panel_params)
      redirect_to user_panel_path(@user_panel)
      #(user_panel_params[:user_id])
    else
      render 'new'
    end

  end
# params.require(:user_panel).permit(:title, :ingredient, :seasoning, :user_id)

#    @user_panel = UserPanel.find(params[:user_id])

    # basic_recipeにuser_panelのフォームで入力した値を渡す
    # postはリダイレクトできない
    # DBに値を突っ込んだら自分自身のSHOWへ遷移
    #@user = User.find(params[:id])
=begin
    @user_panel = @user_panell_user.find[:user_id]
=end


=begin
    if @user_panel.save
      #render 'show'
    else
      #redirect_to 'show'
    end
=end


  def edit
    @user_panel = UserPanel.find(params[:id])
  end

  def update
      @user_panel =  UserPanel.find(params[:id])

    # 編集したものを再保存
    if @user_panel.update_attributes(user_panel_params)
      flash[:success] = "更新しました。たにし"
      #redirect_to user_panel_path(user_panel_params)
      redirect_to user_panel_path(@user_panel)
      #(user_panel_params[:user_id])
    else
      render 'edit'
    end

  end

  def destroy

    #@user_panel = correct_user
    #@user_panel.destroy

    #@user_panel = UserPanel.find(id: params[:user_id])
    #flash[:success] = "User destroyed."
    #redirect_to user_panels_path if @user_panel.nil?

    UserPanel.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to user_panel_path
  end

  private
    def user_panel_params

      params.require(:user_panel).permit(:title, :ingredient, :seasoning, :user_id, :image_url)
    end


    def correct_user
      @user_panel = current_user.user_panels.find_by(id: params[:user_id])
      #@user_panel = .find_by(id: params[:id])

    end



end

