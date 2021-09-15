class ModelNotifikasi{
  String _judul;
  String _isi;
  String _tanggal;

  ModelNotifikasi(
    this._judul,
    this._isi,
    this._tanggal
  );

  String get judul => this._judul;
  String get isi => this._isi;
  String get tanggal => this._tanggal;
}