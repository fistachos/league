class NewsController < ApplicationController
  respond_to :html

  before_filter :require_login, :only => [:new, :create]

  def index
    @news = News.ordered
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(params[:news])
    if @news.save
      redirect_to @news, notice: 'News was successfully created.'
    else
      render :new
    end
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      redirect_to @news, notice: 'News was successfully updated.'
    else
      render :edit
    end

  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
  end
end
