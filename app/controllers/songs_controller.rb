class SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end

  def show
  end
  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end
  def create
    @artist = Artist.find(params[:artist_id])
    @artist.songs.create(song_params)
    redirect_to artist_songs_path(@artist)
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end
end
