class Artist {
  String? id;
  String? name;
  String? album;
  int? value;

  // constructor
  Artist({this.id, this.name, this.album, this.value});

  //factory constructor 
  factory Artist.fromMap(Map<String, dynamic> obj) => Artist(
    id: obj['id'], 
    name: obj['id'], 
    album: obj['id'], 
    value: obj['id'], 
    );

}
