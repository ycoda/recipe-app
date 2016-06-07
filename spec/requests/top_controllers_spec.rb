require 'spec_helper'

describe "top pages" do

  describe "login" do
    before { (visit signin_path) }

    # describe "as correct user" do
    #   before { visit user_panels_path }

    # end
  end
end

=begin
      it "should delete a micropost" do
        expect { click_link "delete" }.to change(Micropost, :count).by(-1)
      end
=end
