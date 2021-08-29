import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/screens/layout_lengkapi_data2.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class LengkapiData1 extends StatefulWidget {
  const LengkapiData1({Key? key}) : super(key: key);

  @override
  _LengkapiData1State createState() => _LengkapiData1State();
}

class _LengkapiData1State extends State<LengkapiData1> {
  TextEditingController _namaLengkapInput = TextEditingController();
  TextEditingController _noHPInput = TextEditingController();
  int group = 1;
  String dropValueAgama = 'Islam';
  String dropValueStatus = 'Menikah';
  String dropValueProvinsi = 'Sulawesi Selatan';
  String dropValueKabupaten = 'Makassar';
  String dropValueKecamatan = 'Tamalate';

  @override
  void initState() {
    super.initState();
    group = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      group = val;
    });
  }

  Widget _header1() {
    return wTextReguler(
        text: 'Data Pribadi',
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(0));
  }

  Widget _helperHeader() {
    return wTextHelperLengkapiData(
        textHelper: 'Langkah 1/2', 
        alignment: Alignment.topRight);
  }

  Widget _helperInputNama() {
    return wHelperInputText(
        textEx: 'Nama Lengkap - Sesuai KTP',
        marginEx: EdgeInsets.only(top: 16));
  }

  Widget _inputNama() {
    return wInputText(
        hintText: 'Masukkan nama lengkap', contVar: _namaLengkapInput);
  }

  Widget _helperTextJK() {
    return wHelperInputText(
        textEx: 'Jenis Kelamin', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _radioJK() {
    return Row(
      children: <Widget>[
        Container(
          child: Radio(
              value: 1,
              activeColor: Color(0xFF168039),
              groupValue: group,
              onChanged: (dynamic val) {
                print(val);
                setSelectedRadio(val);
              }),
        ),
        Text('Pria'),
        Container(
          margin: EdgeInsets.only(left: 76),
          child: Radio(
              value: 2,
              activeColor: Color(0xFF168039),
              groupValue: group,
              onChanged: (dynamic val) {
                print(val);
                setSelectedRadio(val);
              }),
        ),
        Text('Wanita'),
      ],
    );
  }

  Widget _ttl() {
    return wDoubleInput(
        hintText1: 'Tempat Lahir',
        hintText2: 'Tanggal Lahir',
        contVar1: null,
        contVar2: null);
  }

  Widget _helperTTL() {
    return wHelperDoubleInput(
        hintText1: 'Tempat Lahir',
        hintText2: 'Tanggal Lahir',
        margin: EdgeInsets.only(top: 0, bottom: 4));
  }

  Widget _helperIbuAgama() {
    return wHelperDoubleInput(
        hintText1: 'Nama Ibu Kandung',
        hintText2: 'Agama',
        margin: EdgeInsets.only(top: 16, bottom: 4));
  }

  Widget _ibuDanAgama() {
    return wInputAndDrop(
        hintText1: 'Nama Ibu Kandung', contVar1: null, child: _dropDownAgama());
  }

  Widget _dropDownAgama() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        elevation: 16,
        hint: Text('Pilih Agama'),
        value: dropValueAgama,
        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            dropValueAgama = newValue!;
          });
        },
        items:
            ['Islam', 'Kristen', 'Hindu', 'Budha', 'Konghucu'].map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }

  Widget _dropDownStatus() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        elevation: 16,
        value: dropValueStatus,
        hint: Text('Pilih Status'),
        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            dropValueStatus = newValue!;
          });
        },
        items: [
          'Menikah',
          'Belum Menikah',
        ].map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }

  Widget _helperInputPendidikan() {
    return wHelperInputText(
        textEx: 'Pendidikan Terakhir', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _inputPendidikan() {
    return wInputText(hintText: 'Masukkan Pendidikan Terakhir', contVar: null);
  }

  Widget _helperInputKawin() {
    return wHelperInputText(
        textEx: 'Status Perkawinan', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _helperInputNoHP() {
    return wHelperInputText(
        textEx: 'No HP', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _inputNoHP() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      child: Stack(
        children: <Widget>[
          TextFormField(
            controller: _noHPInput,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Color(0xFFF5F6F8),
                filled: true,
                hintText: 'Masukkan No HP',
                hintStyle: TextStyle(color: Color(0xFF848484)),
                contentPadding: EdgeInsets.only(left: 16, right: 16)),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              alignment: Alignment.centerRight,
              child: Text(
                'Verifikasi',
                style: TextStyle(
                    color: Color(0xFFF2994A),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            onTap: null,
          )
        ],
      ),
    );
  }

  Widget _header2() {
    return wTextReguler(
        text: 'Alamat Sesuai KTP',
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 16));
  }

  Widget _helperInputProvinsi() {
    return wHelperInputText(
        textEx: 'Provinsi', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _dropDownProvinsi() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        elevation: 16,
        value: dropValueProvinsi,
        hint: Text('Pilih Provinsi'),
        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            dropValueProvinsi = newValue!;
          });
        },
        items: [
          'Sulawesi Selatan',
          'Sulawesi Barat',
          'Sulawesi Tengah',
          'Sulawesi Tenggara',
          'Sulawesi Utara',
          'Gorontalo',
        ].map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }

  Widget _helperInputKabupaten() {
    return wHelperInputText(
        textEx: 'Kabupaten/Kota', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _dropDownKabupaten() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        elevation: 16,
        value: dropValueKabupaten,
        hint: Text('Pilih Kabupaten atau Kota'),
        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            dropValueKabupaten = newValue!;
          });
        },
        items: [
          'Makassar',
          'Gowa',
          'Takalar',
          'Jeneponto',
          'Bantaeng',
          'Bulukumba',
        ].map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }

  Widget _helperInputKecamatan() {
    return wHelperInputText(
        textEx: 'Kecamatan', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _dropDownKecamatan() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        elevation: 16,
        value: dropValueKecamatan,
        hint: Text('Pilih Kecamatan'),
        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            dropValueKecamatan = newValue!;
          });
        },
        items: [
          'Tamalate',
          'Mamajang',
          'Panakkukan',
          'Antang',
          'Borong',
          'Ujung Pandang',
        ].map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }

  Widget _helperInputALamatLengkap(){
    return wHelperInputText(
      textEx: 'Alamat Lengkap', 
      marginEx: EdgeInsets.only(top: 16)
    );
  }

  Widget _inputAlamatLengkap() {
    return Container(
      height: 64,
      margin: EdgeInsets.only(top: 6),
      child: TextFormField(
        controller: null,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            fillColor: Color(0xFFF5F6F8),
            filled: true,
            hintText: 'Masukkan Alamat Lengkap',
            hintStyle: TextStyle(color: Color(0xFF848484)),
            contentPadding: EdgeInsets.only(left: 16, right: 16)),
      ),
    );
  }

  Widget _buttonSelanjutnya(){
    return wButtonSubmitGreen(
      context: context, 
      title: 'Selanjutnya', 
      onPressed: () => wPushTo(context, LengkapiData2())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Lengkapi Data',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 2,
          shadowColor: Colors.grey,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Container(
            child: SingleChildScrollView(
              child: Column(children: [
                Stack(
                  children: <Widget>[_header1(), _helperHeader()],
                ),
                Column(
                  children: <Widget>[
                    _helperInputNama(),
                    _inputNama(),
                    _helperTextJK(),
                    _radioJK(),
                    _helperTTL(),
                    _ttl(),
                    _helperIbuAgama(),
                    _ibuDanAgama(),
                    _helperInputPendidikan(),
                    _inputPendidikan(),
                    _helperInputKawin(),
                    _dropDownStatus(),
                    _helperInputNoHP(),
                    _inputNoHP(),
                    _header2(),
                    _helperInputProvinsi(),
                    _dropDownProvinsi(),
                    _helperInputKabupaten(),
                    _dropDownKabupaten(),
                    _helperInputKecamatan(),
                    _dropDownKecamatan(),
                    _helperInputALamatLengkap(),
                    _inputAlamatLengkap(),
                    _buttonSelanjutnya()
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
