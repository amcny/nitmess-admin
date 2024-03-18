import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String getTime() {
  final now = DateTime.now();
  if (now.hour > 7 && now.hour <= 12) {
    return 'BreakFast';
  } else if (now.hour > 12 && now.hour <= 15) {
    return 'Lunch';
  } else if (now.hour > 15 && now.hour <= 18) {
    return 'Snacks';
  } else if (now.hour > 18 && now.hour < 24) {
    return 'Dinner';
  } else {
    return 'null';
  }
}
