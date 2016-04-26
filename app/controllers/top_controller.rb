class TopController < ApplicationController
#before_action :correct_user, only: :index
  def index
    @user_panel = UserPanel.all
    #find(params[:id])
  end

=begin
  private
    def correct_user
      @user_panel = current_user.user_panels.find_by(id: params[:user_id])
      #@user_panel = .find_by(id: params[:id])

    end

=end

end
