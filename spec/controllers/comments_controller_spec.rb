require 'rails_helper'

describe CommentsController do

let(:test_comment) { FactoryGirl.create :comment }
let(:test_post) {FactoryGirl.create :post}

  describe "#index" do
    it "assigns the comments to Post.comments" do
      get :index, :post_id => test_post.id
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "assigns the comment to Comment.new" do
      get :new, :post_id => test_post.id
      expect(assigns(:comment)).to be_a_new(Comment)
    end
  end

  describe "#create" do
    it "creates the comment if valid params" do
      expect {
        post :create,
        :post_id => test_post.id,
        :comment => { content: 'my content'}
      }.to change { Comment.count }.by(1)
    end
  end

  describe "#edit" do
    it "assigns the comment to the comment" do
      get :edit, post_id: test_post.id, id: test_comment.id
      expect(assigns(:comment)).to eq(test_comment)
    end
  end

  describe "#update" do
    it "updates the todo if valid params" do
      expect {
        put :update, post_id: test_post.id, id: test_comment.id, comment: {
          content: 'my new content',
        }
      }.to change { test_comment.reload.content }.to('my new content')
    end
  end
end