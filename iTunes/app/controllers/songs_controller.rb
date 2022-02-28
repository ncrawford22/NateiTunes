class SongsController < ApplicationController

    def new
        @song = Song.new
    end

    def create
        @album = Album.find(params[:album_id])
        @song = @album.songs.create(song_params)
        # @song.album = :albumid
        redirect_to album_path(@album)
      end
     
      private
        def song_params
          params.require(:song).permit(:name, :genre, :duration)
        end

        
end
