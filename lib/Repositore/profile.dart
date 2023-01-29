
import 'package:grofast/model/profile.dart';
import 'package:http/http.dart' as http;


abstract class Profile_repos {
  Profile_repos._();

  static Future<NoteModel?> getProducts(int pageIndex) async {
    try {
      final url = Uri.parse("hhttps://zohiddev.uz/v1/products?limit=5&page=$pageIndex");
      final res = await http.get(url);
      return noteModelFromJson(res.body);
    } catch (e) {
      print(e);
    }
    return null;
  }


}

