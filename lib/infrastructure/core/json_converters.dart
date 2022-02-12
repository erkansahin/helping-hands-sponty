import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

DateTime sendDateTimeFromJson(dynamic d) {
  try {
    if (d is Timestamp) {
      return d.toDate();
    } else if (d is String) {
      return DateTime.tryParse(d) ??
          DateFormat('EEE, d MMM yyyy HH:mm:ss').parse(d);
    } else {
      return Timestamp(d["_seconds"], d["_nanoseconds"]).toDate();
    }
  } catch (e) {
    log("sendDateTimeFromJson error2 $e");
    throw "sendDateTimeFromJson error: ${d.runtimeType} is not Timestamp or String! d is $d";
  }
}

Timestamp sendDateTimeToJson(DateTime datetime) => Timestamp.fromDate(datetime);
