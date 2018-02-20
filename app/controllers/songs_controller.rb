class SongsController < ApplicationController
    def create
        playlist = Playlist.find(params[:playlist_id])
        playlist.songs.build(song_params)
        playlist.save

        redirect_to playlist ,notice: 'La canción se ha creado con exito.'
    end

    def destroy
        playlist = Playlist.find(params[:playlist_id])
        song = Song.find(params[:id])
        song.destroy

        redirect_to playlist, notice: 'La canción se ha eliminado con exito'
    end
    private

    def song_params
        params.require(:song).permit(:name, :artist)
    end
end
