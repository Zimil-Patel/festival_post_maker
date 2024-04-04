import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/edit_template_app_bar.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/post_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/post_model.dart';

class TemplateEditScreen extends StatefulWidget {
  const TemplateEditScreen({super.key, required this.postModel});
  final PostModel postModel;
  @override
  State<TemplateEditScreen> createState() => _TemplateEditScreenState();
}

class _TemplateEditScreenState extends State<TemplateEditScreen> {
  @override
  Widget build(BuildContext context) {
    void toggleWidgetState() {
      setState(() {
      });
    }
    return Scaffold(
      backgroundColor: bgColor,
      //APP BAR
      appBar: editTemplateAppBar(context: context, togglesState: toggleWidgetState),

      
      
      //BODY OF SCREEN
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: postBox(postModel: widget.postModel),
            ),
          ),


          //index stack
          Container(
            height: 260,
            width: screenWidth,
            color: bgColor,
          ),
        ],
      ),
    );
  }
}
