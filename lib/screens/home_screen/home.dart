import 'package:flutter/material.dart';
import 'package:oddo_app/screens/other_pages/firstpage.dart';
import 'package:oddo_app/screens/other_pages/secondPage.dart';
import 'package:oddo_app/screens/other_pages/thirdpage.dart';

import 'package:oddo_app/screens/tabbar_screens/final_screen.dart';
import 'package:oddo_app/screens/tabbar_screens/inline_screen.dart';
import 'package:oddo_app/screens/tabbar_screens/midline_screen.dart';
import 'package:oddo_app/screens/tabbar_screens/refinal_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => MySecondPage()));
        },
        backgroundColor: Colors.blue.shade200,
        child: Icon(
          Icons.add,
          color: Colors.grey.shade900,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Inspection',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime(2000),
            lastDay: DateTime(2050),
            calendarFormat: _calendarFormat,
            startingDayOfWeek: StartingDayOfWeek.monday,
            rowHeight: 35,
            daysOfWeekHeight: 35,
            headerStyle: HeaderStyle(
                formatButtonTextStyle: TextStyle(color: Colors.teal),
                titleTextStyle: const TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                )),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.teal,
                // shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            onDaySelected: (selectedDay, focuseDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focuseDay;
                });
              }
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Container(
              child: TabBar(
                indicator: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                controller: tabController,
                isScrollable: false,
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                tabs: [
                  Tab(
                    child: Text(
                      "Inline",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mid-line",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Final",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Re-final",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: Colors.black)),
              height: 35,
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 35,
          //   ),
          //   child: Container(
          //     height: 35,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       border: Border.all(color: Colors.black),
          //     ),
          //     child: TextField(
          //       decoration: InputDecoration(
          //           prefixIcon: Icon(
          //             Icons.search,
          //             color: Colors.grey.shade600,
          //           ),
          //           border: OutlineInputBorder(
          //             borderSide: BorderSide.none,
          //           )),
          //     ),
          //   ),
          // ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                InlineScreen(),
                Midline_screen(),
                FinalScreen(),
                ReFinal_Screen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class MySearchDelegate extends SearchDelegate {
//    @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
