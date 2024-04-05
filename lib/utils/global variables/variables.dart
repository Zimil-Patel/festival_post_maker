import 'package:flutter/material.dart';

double screenWidth = 0;
double screenHeight = 0;

//booleans
bool isListView = true;
bool isFromHistory = false;
bool isBlankTemplate = false;
bool isImageTab = true;
bool isTextTab = true;
bool isFontFamilyTab = true;

//int
int? selectedTextIndex = null;
int stackIndex = 0;
int postIndex = 0;
int fontStackIndex = 0;

//TextEditing controller
TextEditingController txtAdd = TextEditingController(text: 'Enter Your Text');
TextEditingController txtEdit = TextEditingController();

//Font size sldier range
double value = 30;
double weightValue = 600;

int postcount = 1;
GlobalKey imgKey = GlobalKey();
