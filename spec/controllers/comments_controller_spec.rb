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

  # describe "#new" do
  #   it "assigns the todo to Todo.new" do
  #     get :new
  #     expect(assigns(:todo)).to be_a_new(Todo)
  #   end
  # end

  # describe "#create" do
  #   it "creates the todo if valid params" do
  #     expect {
  #       post :create, todo: {
  #         title: 'my title',
  #         body: 'my body',
  #         list_name: 'Sweet List'
  #       }
  #     }.to change { Todo.count }.by(1)
  #   end

  #   it "changes the todo_count" do
  #     expect {
  #       put :update, id: todo.id, todo: {
  #         title: 'my title',
  #         body: todo.body,
  #         list_name: todo.list_name
  #       }
  #     }.to_not change { todo.reload.todo_count }
  #   end

  #   it "downcases and dashes the list_name" do
  #     post :create, todo: {
  #         title: 'my title',
  #         body: 'my body',
  #         list_name: 'Sweet List'
  #       }

  #     expect(Todo.last.list_name).to eq('sweet-list')
  #   end
  # end

  # describe "#edit" do
  #   it "assigns the todo to the todo" do
  #     get :edit, id: todo.id
  #     expect(assigns(:todo)).to eq(todo)
  #   end
  # end

  # describe "#update" do
  #   it "updates the todo if valid params" do
  #     expect {
  #       put :update, id: todo.id, todo: {
  #         title: 'my title',
  #         body: todo.body,
  #         list_name: todo.list_name
  #       }
  #     }.to change { todo.reload.title }.to('my title')
  #   end

  #   it "downcases and dashes the list_name" do
  #     expect {
  #       put :update, id: todo.id, todo: {
  #         title: 'my title',
  #         body: 'my body',
  #         list_name: 'Sweet List'
  #       }
  #     }.to change { todo.reload.list_name }.to('sweet-list')
  #   end

  #   it "doesn't change the todo_count" do
  #     expect {
  #       put :update, id: todo.id, todo: {
  #         title: 'my title',
  #         body: todo.body,
  #         list_name: todo.list_name
  #       }
  #     }.to_not change { todo.reload.todo_count }
  #   end
  # end
end