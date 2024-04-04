import 'package:festival_post_maker/views/screens/template%20view%20screen/components/template_view_app_bar.dart';
import 'package:flutter/material.dart';

class TemplateViewScreen extends StatefulWidget {
  const TemplateViewScreen({super.key});

  @override
  State<TemplateViewScreen> createState() => _TemplateViewScreenState();
}

class _TemplateViewScreenState extends State<TemplateViewScreen> {
  @override
  Widget build(BuildContext context) {
    void toggleWidgetState() {
      setState(() {});
    }
    return Scaffold(
      appBar: templateAppBar(context: context, togglesState: toggleWidgetState),
    );
  }
}
