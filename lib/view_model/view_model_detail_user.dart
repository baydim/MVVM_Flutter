import 'package:becek/model/modelDetailUser.dart';
import 'package:http/http.dart' as http;

class ViewModelDetailUser {
  static getUser({int id}) async {
    try {
      var uri = Uri.tryParse('https://reqres.in/api/users/$id');
      var res = await http.get(uri);
      if (res.statusCode == 200) {
        print(res.body);
        final detailUser = detailUserFromJson(res.body);
        return detailUser;
      } else {
        print('gagal');
        return null;
      }
    } catch (e) {
      print('error $e');
      return null;
    }
  }
}
