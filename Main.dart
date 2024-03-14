class Human {
  String nama;
  String NIK;
  String Alamat;

  Human(this.nama, this.NIK, this.Alamat);
}
class Mahasiswa extends Human {
  
  int nim;
  double IPSementara;

  Mahasiswa(String nama, String NIK, String Alamat, this.IPSementara, this.nim) : super (nama, NIK, Alamat);

  // Metode untuk mencetak informasi mahasiswa
  void cetakInfo() {
    print('\nNama: $nama');
    print('NIM : $nim');
    print('IP  : $IPSementara');
  }
  // Metode untuk mengecek IPSementara
  Future<void> cekIPSementara() async {
    await Future.delayed(Duration(seconds: 0)); // Simulasi operasi asinkron
    
    if (IPSementara < 3.0) {
      print('Peringatan: IP Sementara dibawah 3.0, Tingkatkan!!');
    } else {
      print('IP Sementara memenuhi syarat. Pertahankan!!');
    }
  }
}

void main() async {


  var mahasiswa1 = Mahasiswa('Asep', '231413', 'Bandung', 3.45, 2202524);
  var mahasiswa2 = Mahasiswa('Yanto', '230981', 'Jakarta', 2.0, 2214131);

  // Menjalankan cekIPSementara secara asinkron
  await Future.wait([mahasiswa1.cekIPSementara(), mahasiswa2.cekIPSementara()]);
  // Mencetak informasi mahasiswa
  mahasiswa1.cetakInfo();
  mahasiswa2.cetakInfo();
  }