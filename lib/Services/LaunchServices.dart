import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  const url = 'https://www.youtube.com/channel/UCBC_Z7jla1GSITcqLKAtPxQ';
  _launch(url);
}

launchEMAIL() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'example@gmail.com',
    queryParameters: {
      'subject': 'Testing URL_LAUNCHER | DEMO',
      'body': 'MESSAGE'
    },
  );
  _launch(_emailLaunchUri.toString());
}

launchCALL() async {
  const phonenumber = "tel:9999999999";
  _launch(phonenumber);
}

launchSMS() async {
  const smsPhoneNumber = "sms:9999999999";
  _launch(smsPhoneNumber);
}

_launch(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
