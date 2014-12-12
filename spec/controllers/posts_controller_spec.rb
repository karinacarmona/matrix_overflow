require 'rails_helper'

describe PostsController do
  let(:test_category) {FactoryGirl.create :category}
  let(:test_post) {FactoryGirl.create :post}

 describe "#index" do
    it "assigns the posts to Category.posts" do
      get :index, :category_id => test_category.id
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "assigns the comment to Comment.new" do
      get :new, :category_id => test_category.id
      expect(assigns(:post)).to be_a_new(Post)
    end
  end

  # describe "#create" do
  #   it "creates the comment if valid params" do
  #     expect {
  #       post :create,
  #       :post_id => test_post.id,
  #       :comment => { content: 'my content'}
  #     }.to change { Comment.count }.by(1)
  #   end
  # end

  # describe "#edit" do
  #   it "assigns the comment to the comment" do
  #     get :edit, post_id: test_post.id, id: test_comment.id
  #     expect(assigns(:comment)).to eq(test_comment)
  #   end
  # end

  # describe "#update" do
  #   it "updates the comment if valid params" do
  #     expect {
  #       put :update, post_id: test_post.id, id: test_comment.id, comment: {
  #         content: 'my new content',
  #       }
  #     }.to change { test_comment.reload.content }.to('my new content')
  #   end
  # end

  # describe "#destroy" do
  #   it "deletes the comment" do
  #     test_comment
  #     expect {
  #       delete :destroy, post_id: test_post.id, id: test_comment.id
  #     }.to change {Comment.count}.by(-1)
  #   end
  # end
end