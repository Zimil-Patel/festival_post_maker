import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/edit_template_app_bar.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/post_box.dart';
import 'package:flutter/material.dart';

import '../../../models/post_model.dart';
import 'components/bottom_bar.dart';

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
      setState(() {});
    }

    return Scaffold(
      backgroundColor: bgColor,
      //APP BAR
      appBar:
          editTemplateAppBar(context: context, togglesState: toggleWidgetState, postModel: widget.postModel),

      //BODY OF SCREEN
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: postBox(
                  postModel: widget.postModel, toggleState: toggleWidgetState),
            ),
          ),

          //INDEXED STACK BOTTOM BAR
          BottomBar(postModel: widget.postModel, toggleState: toggleWidgetState),
        ],
      ),
    );
  }
}
