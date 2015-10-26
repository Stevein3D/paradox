class BlogpostsController < ApplicationController
  before_action :admin_user,  only:[:destroy, :update, :patch, :new]

  def index
  	@blogposts = BlogPost.all
  end

  def show
  	@blogpost = BlogPost.find(params[:id])
  end

  def new
  	@blogpost = BlogPost.new
  end

  def edit
  	@blogpost = BlogPost.find(params[:id])
  end

  def create
  	@blogpost = BlogPost.new(blogpost_params)
 
  	if @blogpost.save
    	redirect_to blogpost_path(@blogpost.id)
  	else
    	render 'new'
  	end
  end

  def update
    @blogpost = BlogPost.find(params[:id])
 
    if @blogpost.update(blogpost_params)
      redirect_to blogpost_path(@blogpost.id)
    else
      render 'edit'
    end
  end

  def destroy
  	@blogpost = BlogPost.find(params[:id])
    @blogpost.destroy
    redirect_to blogposts_path
  end


 
  private
    def blogpost_params
      params.require(:blogpost).permit(:title, :text, :blog_index, :date, :category, :subcategory, :link, :picture)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
