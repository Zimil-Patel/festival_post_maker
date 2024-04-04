import 'package:festival_post_maker/models/post_model.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/views/screens/template%20view%20screen/components/template_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'components/bottom_decoration.dart';
import 'components/edit_button.dart';
import 'components/template_view_box.dart';

class TemplateViewScreen extends StatefulWidget {
  const TemplateViewScreen({super.key, required this.postModel});

  final PostModel postModel;

  @override
  State<TemplateViewScreen> createState() => _TemplateViewScreenState();
}

class _TemplateViewScreenState extends State<TemplateViewScreen> {
  TextScaler? textSize;
  @override
  Widget build(BuildContext context) {


    textSize = MediaQuery.of(context).textScaler;

    void toggleWidgetState() {
      setState(() {});
    }

    return Scaffold(
      backgroundColor: bgColor,
      //APP BAR
      appBar: templateAppBar(context: context, togglesState: toggleWidgetState),

      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                //Template view Box
                templateViewBox(postModel: widget.postModel),

                //Edit button
                editTemplateButton(context: context, postModel: widget.postModel),


              ],
            ),
          ),

          const Spacer(),

          //bottom decoration
          bottomDecoration(textSize: textSize),

          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

}
