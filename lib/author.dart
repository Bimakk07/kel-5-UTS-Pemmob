class Author {
  String imageUrl;
  String name;
  String ttl;
  String address;
  String phone;
  String email;
  String github;
  List<String> educations;
  List<String> achievements;

  Author(this.imageUrl, this.name, this.ttl, this.address, this.phone,
      this.email, this.github, this.educations, this.achievements);

  static List<Author> data = [
    Author(
      'assets/nabila.jpg',
      'Nabila Ahlisya Fatir',
      'Surabaya, 15 November 2003',
      'Kec. Kenjeran, Kota Surabaya, Jawa Timur',
      '085732634585',
      '22082010017@student.upnjatim.ac.id',
      'https://github.com/nabilaahlisya',
      [
        'SMPN 2 Surabaya',
        'SMK IPIEMS Surabaya',
        'UPN "Veteran" Jawa Timur',
      ],
      [],
    ),
    Author(
      'assets/bima.jpg',
      'Bima Kaka Bani Adam',
      'Kediri, 26 Mei 2003',
      'Kec. Waru, Kabupaten Sidoarjo, Jawa Timur',
      '089530197909',
      '22082010007@student.upnjatim.ac.id',
      'https://github.com/Bimakk07',
      [
        'SMPN Buana Waru',
        'SMKN 12 Surabaya',
        'UPN "Veteran" Jawa Timur',
      ],
      [],
    ),
  ];
}
