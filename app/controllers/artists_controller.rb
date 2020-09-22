class ArtistsController < ApplicationController

  before_action :set_artist, only: [:show, :edit]

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.new
    if @artist.valid?
      @artist.save
      redirect_to artist_url(@artist)
    else
      render "new"
    end
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end



end
