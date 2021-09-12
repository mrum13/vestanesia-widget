class ModelProgram {
  List _images;
  String _bagiHasil;
  String _judul;
  String _lokasi;
  String _periode;
  int _presentase;
  String _investasi;
  String _dana;
  String _danaTerkumpul;
  String _sisaHari;
  String _sisaUnit;
  String _dibuka;
  String _textButton;
  double _percentProgress;
  String _deskripsi;

  ModelProgram(
      this._images,
      this._bagiHasil,
      this._judul,
      this._lokasi,
      this._periode,
      this._presentase,
      this._investasi,
      this._dana,
      this._danaTerkumpul,
      this._sisaHari,
      this._sisaUnit,
      this._dibuka,
      this._textButton,
      this._percentProgress,
      this._deskripsi);

  List get images => _images;
  String get bagiHasil => this._bagiHasil;
  String get judul => this._judul;
  String get lokasi => this._lokasi;
  String get periode => this._periode;
  int get presentase => this._presentase;
  String get investasi => this._investasi;
  String get dana => this._dana;
  String get danaTekumpul => this._danaTerkumpul;
  String get sisaHari => this._sisaHari;
  String get sisaUnit => this._sisaUnit;
  String get dibuka => this._dibuka;
  String get textButton => this._textButton;
  double get percentProgress => this._percentProgress;
  String get deskripsi => this._deskripsi;
}
