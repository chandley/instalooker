require 'rails_helper'

describe Post do
  it 'can have a caption' do
    post = Post.new(caption: 'caption')
    expect(post.caption).to eq('caption')
  end
end
