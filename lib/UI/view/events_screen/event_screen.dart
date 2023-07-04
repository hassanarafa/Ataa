import 'package:dms_app/model/route_argument.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dms_app/view_model/event_cupit/event_cubit.dart';
import 'package:dms_app/view_model/event_cupit/event_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'check_event_screen.dart';

class EventScreen extends StatelessWidget {
  static const route = "EventScreen";

  EventScreen({Key? key}) : super(key: key);

  // Widget _getItemImageByType(int? type) {
  //   switch (type) {
  //     case 11:
  //       return Image.asset('assest/image/1101624.png');
  //     case 3:
  //       return Image.asset('assest/image/download.jpeg');
  //     case 6:
  //       return Image.asset('assest/image/shirt.jpg');
  //     case 2:
  //       return Image.asset('assest/image/1101624.png');
  //     case 7:
  //       return Image.asset('assest/image/download.jpeg');
  //     case 4:
  //       return Image.asset('assest/image/images.png');
  //     case 1:
  //       return Image.asset('assest/image/1101624.png');
  //     case 12:
  //       return Image.asset('assest/image/download.jpeg');
  //     default:
  //       return Image.asset('assest/image/logo.png');
  //   }
  // }

  List<String> y = ["Client", "Student"];
  List<String> x = [
    'assest/image/client.png',
    'assest/image/student.png',
    // 'assest/image/bb.jpeg',
    // 'assest/image/sss.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assest/image/logo.png",
                  height: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Ataa'",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            )),
        body:
            //  BlocProvider(
            //   create: (context) => EventCubit(InitialEventState())..fetchEvent(),
            //   child: BlocConsumer<EventCubit, EventState>(
            //       listener: (context, state) {},
            //       builder: (context, state) {
            //         return state is LoadingEventState
            //             ? Center(
            //                 child: CircularProgressIndicator(),
            //               )
            //             :
            Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  //       EventCubit.get(context).eventsModel?.items.length ?? 0,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, CheckEventScreen.route,arguments:  RouteArgument(param: {
                      //   "title":EventCubit.get(context).eventsModel?.items[index] ?? ""
                      // ,
                      // }));
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
                        return CheckEventScreen(event: y[index]
                            //           EventCubit.get(context).eventsModel?.items[index],
                            );
                      }));
                    },
                    child: Card(
                      child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.white,
                                child: Image.asset(x[index]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(y[index])
                              // Text(EventCubit.get(context)
                              //         .eventsModel
                              //         ?.items[index]
                              //         .eventArName ??
                              //     ""),
                            ]
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            ),
                      ),
                    ),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 50,
                    childAspectRatio: 2,
                  ),
                ),
              ),
            ],
          ),
        )
        // }),
        // ),
        );
  }
}
