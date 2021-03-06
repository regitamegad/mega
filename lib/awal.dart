import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.search),
          title: Text("Cari item baru untuk disimpan..."),
          actions: <Widget>[
            Icon(Icons.view_headline),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Akun(),
            Divider(),
            MenuUtama(),
            MenuTambahan(),
            Promo(),
          ],
        ));
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('res/images/foto.jpg'))),
        ),
        title: Text(
          'Regita Megadiningrum',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('20 Point'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            RaisedButton.icon(
              icon: Icon(Icons.account_balance_wallet),
              label: Text('Payment'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    icon: Icons.domain,
    colorBox: Colors.blue[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple[500],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Xperince',
    icon: Icons.location_on,
    colorBox: Colors.red[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Eats',
    icon: Icons.restaurant,
    colorBox: Colors.orange[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Kereta Api',
    icon: Icons.train,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Travel',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.green[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Finansial',
    icon: Icons.local_atm,
    colorBox: Colors.black,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.black,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(children: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
          child: Icon(icon, color: iconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(title: 'PayLater Card', icon: Icons.chrome_reader_mode),
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.receipt),
  MenuTambahanItem(title: 'Asuransi', icon: Icons.check_box),
  MenuTambahanItem(title: 'Antar Jemput Bandara', icon: Icons.drive_eta),
  MenuTambahanItem(title: 'Voucher Hadiah', icon: Icons.card_giftcard),
  MenuTambahanItem(title: 'Internet Luar Negri', icon: Icons.language),
  MenuTambahanItem(
      title: 'Status Penerbangan', icon: Icons.airplanemode_active),
  MenuTambahanItem(title: 'Budget Planner', icon: Icons.calculate),
  MenuTambahanItem(title: 'Notifikasi Harga', icon: Icons.notifications),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Traveloka Single Day',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //       begin: Alignment.topCenter,
                    //       end: Alignment.bottomCenter,
                    //     ),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(20.0, 20.0),
                              bottomRight: Radius.elliptical(150.0, 150.0))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                        child: Text('%',
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: AssetImage('res/images/promo1.jpeg')),
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: AssetImage('res/images/promo2.jpeg')),
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              )
            ],
          ),
        )
      ],
    );
  }
}
