class ProjectsController < ApplicationController

  def index
    @list = List.all
    render :json => @list, :include => :todos
  end

end