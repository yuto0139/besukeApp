require 'rails_helper'

describe Blog do
  it "titleがあれば有効な状態であること" do
    blog = Blog.new(title: 'Hey!')
    expect(blog.valid?).to eq true
  end
  it "titleがなければ無効な状態であること" do
    blog = Blog.new(title: '')
    expect(blog.valid?).to eq false
  end
end
