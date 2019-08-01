class ArticlesController < ApplicationController

    def index
      @articles = Article.all
    end
    
    def new
        render "new_article.html.erb"
    end
    
    def create
        response = Cloudinary::Uploader.upload(params[:image_url])
        cloudinary_url = response["secure_url"]

      @article = Article.create(
        title:params["title"],
        body: params["body"],
        image_url: cloudinary_url)

      redirect_to "/articles"
    end

    def show
      @article = Article.find_by_id(params["id"])
      render "show.html.erb"
    end

    def edit
      @article = Article.find_by_id(params["id"])
      render "edit.html.erb"
    end

    def update
      @article = Article.find_by_id(params["id"])
      @article.title = params["title"]
      @article.body = params["body"]
      @article.save

      redirect_to "/articles"
    end

    def destroy
      @article = Article.find_by_id(params["id"])
      @article.destroy

      redirect_to"/articles"
    end
    
end