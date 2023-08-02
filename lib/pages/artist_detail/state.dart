import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:iron/common/models/Song.dart';

class ArtistDetailState {
  Artist artist = Artist();
  List<Song> songList = [];
  List<Album> albumList = [];

  ArtistDetailState() {
    ///Initialize variables
  }
}
