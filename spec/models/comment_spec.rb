require 'rails_helper'
describe Comment do
  context "validations" do
    it { should validate_presence_of :content }
    it 'content must be present' do
      expect {
        comment = Comment.new
        comment.save
        expect(comment.errors.full_messages).to include("Content can't be blank")
      }.not_to change {Comment.count}
    end
  end

  context "associations" do
    it { should belong_to :user }
    it { should belong_to :post }
  end
end
