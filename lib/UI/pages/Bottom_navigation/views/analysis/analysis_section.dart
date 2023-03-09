import 'package:flutter/material.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/analysis/analysis_one.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/analysis/analysis_two.dart';

class AnalysisSection extends StatefulWidget {
  const AnalysisSection({Key? key}) : super(key: key);

  @override
  State<AnalysisSection> createState() => _AnalysisSectionState();
}

class _AnalysisSectionState extends State<AnalysisSection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xffe6efff),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 25,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 45, 10, 10),
                  child: Text(
                    'Statistics',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFD5DAE1),
                      borderRadius: BorderRadius.circular(12)),
                  child: TabBar(
                      unselectedLabelColor: Colors.black87,
                      unselectedLabelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      indicator: BoxDecoration(
                          color: Color(0xff3567C3),
                          borderRadius: BorderRadius.circular(12)),
                      tabs: [
                        Tab(
                          text: 'Income',
                        ),
                        Tab(
                          text: 'Expenses',
                        )
                      ]),
                ),
                SizedBox(
                  height: 512,
                  child: TabBarView(children: [
                    AnalysisOne(),
                    AnalysisTwo(),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
