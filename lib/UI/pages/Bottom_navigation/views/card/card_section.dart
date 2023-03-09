import 'package:flutter/material.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/analysis/analysis_one.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/analysis/analysis_two.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/card/card_one.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/card/card_two.dart';

class CardSection extends StatefulWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xFFE7E7EE),
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
                    'Cards',
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
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ) ,
                      unselectedLabelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      indicator: BoxDecoration(
                          color: Color(0xff3567C3),
                          borderRadius: BorderRadius.circular(12)),
                      tabs: [
                        Tab(
                          text: 'Card',
                        ),
                        Tab(
                          text: 'Account',
                        )
                      ]),
                ),
                SizedBox(
                  height: 512,
                  child: TabBarView(children: [
                    CardOne(),
                    CardTwo(),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
