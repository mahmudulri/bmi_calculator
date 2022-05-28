import 'package:bmi_calculator/const/string.dart';
import 'package:bmi_calculator/widgets_design/container_box.dart';
import 'package:bmi_calculator/widgets_design/custom_widgets.dart';
import 'package:bmi_calculator/widgets_design/data_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

const activeColor = Color(0xFF566de5);
const InactiveColor = Color(0xFFffffff);

class _HomepageState extends State<Homepage> {
  Color maleColor = activeColor;
  Color femaleColor = InactiveColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppString.appbartitle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    boxColor: Color(0xFFffffff),
                    childWidget: DataContainer(
                      icon: FontAwesomeIcons.mars,
                      title: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    boxColor: Color(0xFFffffff),
                    childWidget: DataContainer(
                      icon: FontAwesomeIcons.venus,
                      title: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              boxColor: Color(0xFFffffff),
              childWidget: Column(
                children: [
                  Text("hi"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    boxColor: Color(0xFFffffff),
                    childWidget: Column(),
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    boxColor: Color(0xFFffffff),
                    childWidget: Column(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
