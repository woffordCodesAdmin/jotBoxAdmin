class ProfilesController < ApplicationController
    def index
        @posts = Post.all
    end

    def create
        @post = Post.new(post_params)
    
        respond_to do |format|
          if @post.save
            format.html { redirect_to @post, notice: "Post was successfully created." }
            format.json { render :show, status: :created, location: @post }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @post.errors, status: :unprocessable_entity }
          end
        end
      end
end
