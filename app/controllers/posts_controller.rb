class PostsController < ApplicationController
	before_action :find_post, only: [:edit, :update, :show, :delete]

	# Index action to render all posts
	def index
		@posts = Post.order("created_at desc")
		if params[:search]
			@posts = Post.search(params[:search]).order("created_at desc")
		else
			@posts = Post.all.order("created_at desc")
		end
	end

	# New action for creating post
	def new
		@posts = Post.all
		@post = Post.new
	end

	# Create action saves the post into database
	def create

		@post = Post.new(post_params)
		if @post.save
			flash[:notice] = "Successfully created post!"
			redirect_to post_path(@post)
		else
			flash[:alert] = "Error creating new post!"
			render :new
		end
	end

	def manage
		@posts = Post.order("created_at desc")
	end

	# Edit action retrives the post and renders the edit page
	def edit
		@posts = Post.all
	end

	def archive
		@posts = Post.all
	end

	# Update action updates the post with the new information
	def update
		#@post = Post.find(params[:id])

		if @post.update_attributes(post_params)
			flash[:notice] = "Successfully updated post!"
			redirect_to post_path(@post)
		else
			flash[:alert] = "Error updating post!"
			render :edit
		end
	end

	# The show action renders the individual post after retrieving the the id
	def show
		@posts = Post.all
	end

	# The destroy action removes the post permanently from the database
	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			flash[:notice] = "Successfully deleted post!"
			redirect_to posts_path
		else
			flash[:alert] = "Error updating post!"
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :category_id, :author_id)
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
