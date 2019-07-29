class TunesController < ApplicationController
  def index
    @tunes = Tune.all
  end

  def new
    @tune = Tune.new
  end

  def create
    @tune = Tune.new(tune_params)
    @tune.save
    redirect_to tunes_path
  end

  def show
    @tune = Tune.find(params[:id])
  end

  def edit
    @tune = Tune.find(params[:id])
  end

  def update
    @tune = Tune.find(params[:id])
    @tune.update(tune_params)
  end

  def destroy
    @tune = Tune.find(params[:id])
    @tune.destroy
    redirect_to pages_home_path
  end

  private

  def tune_params
    params.require(:tune).permit(:name, :artist, :album, :genre, :link, :photo)
  end
end
