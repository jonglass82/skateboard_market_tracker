class ArticlesController < ApplicationController

    def index
      @articles = Article.all
      render "index"
    end
    
    def new
        render "new_article.html.erb"
    end
    
    def create
      @article = Article.create(
        title:params["title"],
        body:["body"])

      redirect_to "/articles"

    end
    
end