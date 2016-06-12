class UserPanelsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
    # @user_panel = UserPanel.all
    @user_panel = current_user.user_panels.where(user_id: current_user.id)
  end

  def show
    @user_panel = UserPanel.find(params[:id])
    #@user_panel = UserPanel.find_by_user_id(current_user.id)
  end

  def new
    @user_panel = UserPanel.new
    # @recipe_picture = RecipePicture.new
  end

  def create
    @user_panel = UserPanel.new(user_panel_params)
    # ここから下が動いていないのでuser_idが取れてない
    @user_panel.user_id = current_user.id

    if @user_panel.save
      flash[:success] = "ようこそ hello world"
      redirect_to user_panel_path(@user_panel)
    else
      render 'new'
    end
  end

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
    UserPanel.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to user_panels_path
  end
end


  private
    def user_panel_params
      params.require(:user_panel).permit(:title, :ingredient, :seasoning, :picture)
    end
