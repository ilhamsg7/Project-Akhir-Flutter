// ignore_for_file: unused_import, avoid_print, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:fergie_time/models/match.dart';

class EplMatch {
  static const headers = {
    'x-rapidapi-key': 'da633d7eeefb468ba93f1d464a913b77',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  final String url =
      'https://v3.football.api-sports.io/fixtures?team=33&league=39&season=2021';
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/fixtures?team=33&league=39&season=2021'));

  Future<String> getMatches() async {
    request.headers.addAll(headers);
    http.StreamedResponse result = await request.send();

    if (result.statusCode == 200) {
      final response = result.stream.bytesToString();
      return response;
    } else {
      throw Exception('Failed to load matches');
    }
  }
}

/* 
  

  // Response result = await get(url, headers: headers);
    // var body;
    request.headers.addAll(headers);
    http.StreamedResponse result = await request.send();

    if (result.statusCode == HttpStatus.ok) {
      final response = await result.stream.bytesToString();
      return response;
      // body = jsonDecode(result.body);
      // final results = body['response'];
      // final jsonResponse = json.decode(result.body);
      // final matchMap = jsonResponse['results'];
      // List match = matchMap.map((i) => Match.fromJson(i)).toList();
      // return match;
    } else {
      throw Exception('Failed to load post');
    }

*/

  // request.headers.addAll(headers);

  // http.StreamedResponse response = await request.send();

  // if(response.statusCode == 200) {
  //   print(await response.stream.bytesToString());
  // } else {
  //   print(response.reasonPhrase);
  // }


// // ignore_for_file: unused_import, avoid_print

// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';

// class EplMatch {
//   String league, season;
//   EplMatch({this.league, this.season});
//   final headers = {

//     'x-rapidapi-host': 'v3.football.api-sports.io'
//   };

//   //String url = 'https://v3.football.api-sports.io/fixtures?team=33&league=39&season=2021';

//   var url =
//       'https://v3.football.api-sports.io/fixtures?team=33&league=39&season=2021';

//   // var request = http.Request(
//   //     'GET',
//   //     Uri.parse(
//   //         'https://v3.football.api-sports.io/fixtures?team=33&league=39&season=2021'));

//   Future<String> getMatches() async {
//     final String uri = url;

//     http.Response result = await http.get(Uri.parse(uri), headers: headers);

//     if (result.statusCode == HttpStatus.ok) {
//       print("Sukses");
//       String response = result.body;
//       return response;
//     } else {
//       throw Exception('Failed to load post');
//     }
//   }
//   // var request = http.Request(
//   //   'GET',
//   //   Uri.https('v3.football.api-sports.io',
//   //       'fixtures?team=33&league=' + 39.toString() + '&season=2021'),
//   // );

//   // Future<dynamic> getMatches() async {
//   //   request.headers.addAll(headers);
//   //   http.StreamedResponse result = await request.send();

//   //   if (result.statusCode == HttpStatus.ok) {
//   //     String response = await result.stream.bytesToString();
//   //     return response;
//   //   } else {
//   //     throw Exception('Failed to load post');
//   //   }
//   // }
// }


// // ignore_for_file: unused_import, avoid_print, unnecessary_brace_in_string_interps

// // import 'dart:convert';
// // import 'dart:io';
// // import 'dart:async';
// // import 'package:http/http.dart' as http;
// // import 'package:dio/dio.dart';

// // class EplMatch {
// //   String team, league, season;
// //   EplMatch({this.team, this.league, this.season});

// //   var headers = {
// //     'x-rapidapi-host': 'v3.football.api-sports.io'
// //   };

// //   Future<dynamic> getMatches() async {
// //     Dio dio = Dio();
// //     var response = await dio.get(
// //       'https://v3.football.api-sports.io/fixtures?',
// //       options: Options(
// //         headers: headers,
// //       ),
// //       queryParameters: {
// //         'team': '33',
// //         'league': '39',
// //         'season': '2021',
// //       },
// //     );

// //     if (response.statusCode == 200) {
// //       return response.toString();
// //     } else {
// //       throw Exception('Failed to load post');
// //     }
// //   }
// // }