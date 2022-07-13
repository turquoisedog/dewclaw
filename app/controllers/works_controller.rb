class WorksController < ApplicationController
  def index
    @works = Image.all
  end

  def show
    @work = Image.find
  end

  def new
    @work = Image.new
  end
end
