class MoviesController < ApplicationController
  def index
    body = JSON.parse(HTTParty.get("https://api.themoviedb.org/3/search/movie?api_key=a99cc60fc2b34dbb18cb806b8a88ed14&query=#{URI.escape(params[:query])}&page=#{params[:page] || 1}").body)
    @results = body["results"]
    @current_page = body["page"]
    @total_pages = body["total_pages"]
    @total_results = body["total_results"]
    @query = params[:query]    
  end

end
