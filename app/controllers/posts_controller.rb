class PostsController < ApplicationController
	def index
		@posts = Post.all
		render "index"
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.valid?
			@post.save!
			redirect_to :root
		else
			render "new"
		end
	end

	private

	 def post_params
    params.require(:post).permit(:title, :text)
  end
end