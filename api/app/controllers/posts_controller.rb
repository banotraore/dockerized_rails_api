class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: {
      posts: ActiveModelSerializers::SerializableResource.new(posts, each_serializer: PostSerializer),
      message: 'Posts list fetched successfully',
      status: :ok,
      type: 'Success'
    }
  end
end
