class UserPanelsController < ApplicationController

  def index
    @user_panel = UserPanel.all
    #@user_panel.order(:created_at desc)
    # @posts = UserPanel.all
    # @user_panel = @posts.find_by_user_id(current_user)
#binding.pry
    # send_data RecipePicture.find_all_by_id(params[:id]),
    # :type => 'image/png', :disposition => 'inline'
  end

  def show
    @user_panel = UserPanel.find(params[:id])

    #@user_panel = UserPanel.find_by_user_id(current_user.id)
  end

  def new
    @user_panel = UserPanel.new
    @recipe_picture = RecipePicture.new
  end

  def create
    @user_panel = UserPanel.new(user_panel_params)
    # ここから下が動いていないのでuser_idが取れてない
    @user_panel.user_id = current_user#.id
    @recipe_picture = RecipePicture.create
    @user_panel.recipe_picture_id = @recipe_picture.id

#----------------------------------------------
    # file = recipe_picture_params[:picture_file]
    # name = file.original_filename
    #
    # recipe_picture = {}
    #
    # if file != nil
    #   recipe_picture[:picture_file] = file.read
    #   recipe_picture[:picture_name] = name#.original_filename
    #   @recipe_picture = RecipePicture.new(recipe_picture)
    # end
#----------------------------------------------
    if @user_panel.save
      flash[:success] = "ようこそ hello world"
      redirect_to user_panel_path(@user_panel)
    else
      render 'new'
    end
  end

    # if @user_panel.save && @recipe_picture.save
    #   @user_panel.recipe_picture_id = @recipe_picture.id
    #   @user_panel.save
    #   flash[:success] = "ようこそ hello world"
    #   redirect_to user_panel_path(@user_panel)
    # else
    #   render 'new'
    # end



    # recipe_picture = RecipePicture.create(params[:id])
    # @user_panel.recipe_picture_id = recipe_picture

    # user_panel.save # 関連を確定するためには子のsaveが必要

    # @user_panel.recipe_picture_id = @recipe_picture.id
    # @recipe_picture = user_panel

    # rpic = RecipePicture.find(:id)
    # upanel = rpic.user_panels.build(:recipe_picture_id)
    # @user_panel = upanel
    #@recipe_picture = RecipePicture.find(id: @user_panel.recipe_picture_id)
    #@user_panel.recipe_picture_id = @recipe_picture.id

    #@user_p = UserPanel.recipe_pictures.build(recipe_picture_id: @recipe_picture.id)

#@order = Order.create(order_date: Time.now, customer_id: @customer.id)


      ### Couldn't find RecipePicture without an ID #IDがなくて見つけれない
      #@recipe_picture = RecipePicture.find(params[:id])
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
      params.require(:user_panel).permit(:title, :ingredient, :seasoning, :picture) #, :picture_name)
    end
    # def recipe_picture_params
    #   params.require(:recipe_picture).permit(:picture_file, :picture_name)
    # end
