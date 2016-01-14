class PostsController < ApplicationController
	def index
		@post = Post.all;
	end

	def show
		@post = Post.find(params[:id])
	end

	def create

	end

	def new

	end

	def edit

	end

	def update

	end

	def destroy

	end

	# private
	# def post_params
	# 	params.require(:posts).permit(:title, :body, :category_id, :author_id);
	# end
end
