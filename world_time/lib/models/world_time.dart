import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Worldtime{
  String ?location;
  String ?time;
  String ?flag;
  String ?url;
  Worldtime({this.location,this.flag,this.url});

 Future gettime() async {

    try {
          http.Response response = await http.get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    // print(response.body);
    Map data=jsonDecode(response.body);
    var datetime = data['datetime'];
    var offset = data['utc_offset'].substring(1,3);
    DateTime now =DateTime.parse(datetime);
    now=now.add(Duration(hours: int.parse(offset)));
     time= DateFormat.jm().format(now);
    } catch (e) {
      print("these are the erreos:-$e");
      time="could not get the right value";
    }

  }
}
// Worldtime instance=Worldtime(location: 'Berlin', flag:'germany.png',url: 'Europe/Berlin');