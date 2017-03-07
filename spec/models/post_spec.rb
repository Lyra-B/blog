require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @valid_post = Post.new(:title => 'Welcome to my blog', :body => 'Welcome developers')
    @invalid_post = Post.new
  end


  it "is valid with valid attributes" do
    expect(@valid_post).to be_valid
  end

  it "is not valid without a title" do
    post = Post.new(title: nil)
    expect(@invalid_post).to_not be_valid
  end

  it "is not valid without a body" do
    post = Post.new(body: nil)
    expect(@invalid_post).to_not be_valid
  end
end
