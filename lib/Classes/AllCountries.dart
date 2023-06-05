import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

class AllCountries {
  final String flag;
  final String countryName;
  final String url ;

  AllCountries({required this.url,required this.flag, required this.countryName});

  late bool isDay;
  late String stringRealTime;
  late String timeZone;

  getData() async {
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map dataRecived = jsonDecode(response.body);
    DateTime realTime = DateTime.parse(dataRecived["utc_datetime"]);
    int offset = int.parse(dataRecived["utc_offset"].substring(0, 3));
    timeZone = dataRecived["timezone"];
    realTime = realTime.add(Duration(hours: offset));
    stringRealTime = DateFormat('hh:mm a').format(realTime);

    if (realTime.hour > 5 && realTime.hour < 18)
      isDay = true;
    else
      isDay = false;
  }
}
