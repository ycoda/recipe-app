module UserPanelsHelper

=begin
  def current_user
    @user_panel = current_user.user_panels.find(params[:id])
  rescue
    redirect_to user_panels_path
  end
=end
end
