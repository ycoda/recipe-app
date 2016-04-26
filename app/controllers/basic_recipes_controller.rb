class BasicRecipesController < ApplicationController
  before_action :set_basic_recipe, only: [:show, :edit, :update, :destroy]

  # GET /basic_recipes
  # GET /basic_recipes.json
  def index

    @basic_recipe = BasicRecipe.all

  end

  # GET /basic_recipes/1
  # GET /basic_recipes/1.json
  def show
    @basic_recipe = BasicRecipe.find(params[:id])
  end

  # GET /basic_recipes/new
  def new
    @basic_recipe = BasicRecipe.new
  end

  # GET /basic_recipes/1/edit
  def edit
  end

  # POST /basic_recipes
  # POST /basic_recipes.json
  def create

    @basic_recipe = BasicRecipe.new(basic_params)
      if @basic_recipe.save
        # Handle a successful save.
        redirect_to action: 'index'
      else
        render 'new'
      end

  end

  # PATCH/PUT /basic_recipes/1
  # PATCH/PUT /basic_recipes/1.json
  def update
    respond_to do |format|
      if @basic_recipe.update(basic_recipe_params)
        format.html { redirect_to @basic_recipe, notice: 'Basic recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @basic_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_recipes/1
  # DELETE /basic_recipes/1.json
  def destroy
    @basic_recipe.destroy

    respond_to do |format|
      format.html { redirect_to basic_recipes_url }
      format.json { head :no_content }
    end
  end

  private
    def basic_params
        #params.require(:text_overview).permit(:title, :introduction)
          params.require(:basic_recipe).permit(:title , :ingredient, :seasoning)
    end

    # Use callbacks to share common setup or constraints between actions.
     def set_basic_recipe
       @basic_recipe = BasicRecipe.find(params[:id])
     end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def basic_recipe_params
    #   params.require(:basic_recipe).permit(:title, :introduction, :photos, :ingredient, :seasoning)
    # end

    # def image_params
    #   params.require(:image).permit(
    #     :filename,:file
    #   )
    # end

end
