class SearchController < ApplicationController
  def index    
    @q = Article.ransack(params[:q])    
    @articles = @q.result.paginate(page: params[:page], per_page: 5)
  end
end
