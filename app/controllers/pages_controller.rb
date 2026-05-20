class PagesController < ApplicationController
  def home
    @pages = Page.all.index_by(&:slug)
    @projects = Project.order(:id)
  end

  def contact
    @client_request = ClientRequest.new
  end

  def index
    @projects = Project.order(:id)
    render 'projects/index'
  end

  def show
    @project = Project.find(params[:id])
    render 'projects/show'
  end
end
