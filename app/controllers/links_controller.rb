class LinksController < ApplicationController

  def index
    @links = current_user.links
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice] = "#{@link.title} has been created!"
      redirect_to links_path
    else
    end
  end

  private
    def link_params
      params.require(:link).permit(:title, :url)
    end
end
