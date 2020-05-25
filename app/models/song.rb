def new
  @billboards = Billboard.all - @artist.billboards
  @song = @artist.songs.new
end
