require 'spec_helper'

describe "TopPages" do
  describe "GET /top_pages" do
    it "root_path, http-status 200" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get top_index_path
      response.status.should be(200)
    end
  end
end
