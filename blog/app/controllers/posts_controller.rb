class PostsController < ApplicationController
    
    http_basic_authenticate_with name: "Dhaffaf", password: "secret", except: [:index, :show]

    def index 
        @posts= Post.all
    end 

    def show
        # puts params "will print the result in the consol"
        @post =  Post.find(params[:id])
    end

    def destroy
        @post =  Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    def new 
        @post = Post.new 
    end 

    def create 
        @post = Post.create (post_params)
        # redirect_to posts_path 
        redirect_to posts_path(@post)
    end 

    def edit
        @post = Post.find(params[:id])
    end
  
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to posts_path(@post)
    end

    def post_params
        params.require(:post).permit(:postTitle ,:postText ,:postAuthor)
    end

end 