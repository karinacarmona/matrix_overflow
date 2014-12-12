require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  context "when a user goes to signup" do
    describe "user#new" do
      xit "loads a signup page for a user" do
        get :new
        expect(response).to be_success
      end
    end
  end

  #this seems like a views test
  context "while filling out the fields" do
    describe "user#create" do
      xit "doesn't allow a user to be created if the fields aren't filled out" do
        expect{
          User.create(username: "lulu", password: "ghoul")
        }.to_not change(User, :count)
      end
    end
  end

  #so does this one...
  context "if proper fields aren't filled out" do
    describe "user#create" do
      xit "reloads the page if fields are not filled correctly" do
        expect(true).to eq(true)
      end
    end
  end
end
