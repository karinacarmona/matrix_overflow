require 'rails_helper'
RSpec.describe "categories#index", :type => :view do
  context "on the index page" do
    describe "the page" do
      it "should display a list of all categories" do
        assign(:categories, [
        stub_model(Category, :name => "slicer"),
        stub_model(Category, :name => "dicer")
        ])

        render

        rendered.should contain("slicer")
        rendered.should contain("dicer")
      end
    end
  end
end
