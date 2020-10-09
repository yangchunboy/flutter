// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:app/App.dart';
import 'package:provider/provider.dart'; 
import 'package:app/provider/CountModel.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) =>  CountModel(),
    child: App(),
  )
);

