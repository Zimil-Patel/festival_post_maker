

import 'package:flutter/cupertino.dart';

double screenWidth = 0;
double screenHeight = 0;

//booleans
bool isListView = true;
bool isFromHistory = false;
bool isBlankTemplate = false;
bool isImageTab = true;
bool isTextTab = true;

//int
int? selectedTextIndex = null;
int stackIndex = 0;
int postIndex = 0;


//TextEditing controller
TextEditingController txtAdd = TextEditingController(text: 'Enter Your Text');
TextEditingController txtEdit = TextEditingController();