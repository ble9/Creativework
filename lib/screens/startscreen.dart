import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TICKET PROVIDER'),
      ),
      body: ListView(
        children: <Widget>[
          Text('SHOWS',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 10.0),
          Text("Going Places ",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          Text('Location: Dallas,Tx',
              style: TextStyle(color: Colors.purple),
              textAlign: TextAlign.center),
          Text('Date: 12/10/20',
              style: TextStyle(color: Colors.purple),
              textAlign: TextAlign.center),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          FadeInImage.assetNetwork(
              fadeOutCurve: Curves.bounceInOut,
              fadeInDuration: const Duration(seconds: 10),
              height: 200.0,
              placeholder: 'assets/images/placeholder.png',
              width: 50.0,
              image:
                  'https://img.reelgood.com/content/movie/bbd56282-a704-4c34-95de-c55fc659e595/poster-780.webp'),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
          ),
          Divider(height: 50.0),
          SizedBox(height: 10.0),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
          ),
          Text("ImagineNATION ",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          Text('Location:Oklahoma City, OK',
              style: TextStyle(color: Colors.yellow),
              textAlign: TextAlign.center),
          Text('Date: 11/25/20',
              style: TextStyle(color: Colors.blue),
              textAlign: TextAlign.center),
          FadeInImage.assetNetwork(
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: const Duration(seconds: 10),
              height: 200.0,
              placeholder: 'assets/images/placeholder.png',
              width: 50.0,
              image:
                  'https://m.media-amazon.com/images/I/81WTA57HzhL._AC_UY545_FMwebp_QL65_.jpg'),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
          ),
          Divider(height: 50.0),
        ],
      ),
      drawer: Container(
        width: 100,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add_shopping_cart,
                    size: 30.0, color: Colors.lightGreen),
                onPressed: () {
                  Alert(
                          context: context,
                          title: "Confirm Registration to shows",
                          desc: "See ya there ")
                      .show();
                },
              ),
              Placeholder(
                color: Colors.red,
                fallbackHeight: 40,
                fallbackWidth: 30,
              ),
              IconButton(
                icon: Icon(Icons.remove_shopping_cart,
                    size: 30.0, color: Colors.red),
                onPressed: () {
                  Alert(
                          context: context,
                          title: "Removed confirmation to show",
                          desc: "Next Time")
                      .show();
                },
              ),
              Placeholder(
                color: Colors.red,
                fallbackHeight: 40,
                fallbackWidth: 30,
              ),
              IconButton(
                icon: Icon(Icons.payment, size: 30.0, color: Colors.red),
                onPressed: () {
                  Alert(
                          context: context,
                          title: "Make sure to pay",
                          desc: "Payment Needed")
                      .show();
                },
              ),
              Placeholder(
                color: Colors.red,
                fallbackHeight: 40,
                fallbackWidth: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
