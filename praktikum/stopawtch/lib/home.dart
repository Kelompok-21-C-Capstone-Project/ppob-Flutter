import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final StopWatchTimer _stopWatchTimer = StopWatchTimer();
    final isHours = true;
    final _scrollController = ScrollController();

    dispose() {
      super.dispose();
      _stopWatchTimer.dispose();
      _scrollController.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("How to Create a Stopwatch"),
        centerTitle: true,
        backgroundColor: Color(0xFF48C4FA),
      ),
      body: Center(
        child: Column(
          children: [
            // Text(
            //   "Stopwatch Goes Here",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            StreamBuilder<int>(
              stream: _stopWatchTimer.rawTime,
              initialData: _stopWatchTimer.rawTime.value,
              builder: (context, snapshot) {
                final value = snapshot.data;
                final displayTime =
                    StopWatchTimer.getDisplayTime(value!, hours: isHours);
                return Text(
                  displayTime,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    color: Colors.green,
                    label: "Start",
                    onPress: () {
                      _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                    }),
                SizedBox(width: 10),
                CustomButton(
                    color: Colors.red,
                    label: "Stop",
                    onPress: () {
                      _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                    }),
              ],
            ),
            CustomButton(
                color: Colors.amberAccent,
                label: "Lap",
                onPress: () {
                  _stopWatchTimer.onExecute.add(StopWatchExecute.lap);
                }),
            CustomButton(
                color: Colors.black,
                label: "Reset",
                onPress: () {
                  _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                }),
            Container(
                height: 120,
                margin: EdgeInsets.all(8),
                child: StreamBuilder<List<StopWatchRecord>>(
                  stream: _stopWatchTimer.records,
                  initialData: _stopWatchTimer.records.value,
                  builder: (context, snapshot) {
                    final value = snapshot.data;
                    if (value!.isEmpty) {
                      return Container();
                    }
                    Future.delayed(Duration(milliseconds: 100), () {
                      _scrollController.animateTo(
                          _scrollController.position.maxScrollExtent,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeOut);
                    });
                    return ListView.builder(
                      controller: _scrollController,
                      itemBuilder: (context, AsyncSnapshot) {
                        final data = value[index];
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "${index + 1} - ${data.displayTime}",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Divider(height: 1),
                          ],
                        );
                      },
                      itemCount: value.length,
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.color,
      required this.label,
      required this.onPress})
      : super(key: key);
  final Color color;
  final Function onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: color,
      shape: StadiumBorder(),
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
