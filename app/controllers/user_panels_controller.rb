class UserPanelsController < ApplicationController

  def index
    @posts = UserPanel.all
    @user_panel = @posts.find_all_by_user_id(current_user.id)
  end

  def show
    @user_panel = UserPanel.find(params[:id])
    #@user_panel = UserPanel.find_by_user_id(current_user.id)
  end

  def new
    @user_panel = UserPanel.new
    @recipe_picture = RecipePicture.new
  end
#####kouda17：28
  def create
    @user_panel = UserPanel.new(user_panel_params)
    @recipe_picture = RecipePicture.new(recipe_picture_params)

    @user_panel.user_id = current_user.id
    #@user_panel.recipe_picture_id = @recipe_picture.id
#binding.pry
    #@user_p = UserPanel.recipe_pictures.build(recipe_picture_id: @recipe_picture.id)

#@order = Order.create(order_date: Time.now, customer_id: @customer.id)


    if @user_panel.save && @recipe_picture.save
      flash[:success] = "ようこそ hello world"
      #redirect_to user_panel_path(user_panel_params)
      redirect_to user_panel_path(@user_panel)
      #(user_panel_params[:user_id])
    else
      render 'new'
    end
  end

    private
    def user_panel_params
      params.require(:user_panel).permit(:title, :ingredient, :seasoning) #, :picture_name)
    end
    def recipe_picture_params
      params.require(:recipe_picture).permit(:picture_name)
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
