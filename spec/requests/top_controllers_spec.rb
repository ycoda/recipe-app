require 'spec_helper'

describe "Micropost pages" do

  describe "micropost destruction" do
    before { FactoryGirl.create(:user_panel, user_id: user) }

    describe "as correct user" do
      before { visit user_panels_path }

    end
  end
end

=begin
      it "should delete a micropost" do
        expect { click_link "delete" }.to change(Micropost, :count).by(-1)
      end
=end
