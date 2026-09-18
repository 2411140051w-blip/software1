class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new  #formヘルパーのデータの入れ物になる
  end

  def create
    bookmark = Bookmark.new(title: params[:bookmark][:title], author: params[:bookmark][:author], publish_year: params[:bookmark][:publish_year])
    bookmark.save
    redirect_to '/' #=>一覧ページにリダイレクトする
  end
end
