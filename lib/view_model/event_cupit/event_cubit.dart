import 'package:dms_app/UI/view/events_screen/Order_data.dart';
import 'package:dms_app/UI/view/events_screen/add_order_screen.dart';
import 'package:dms_app/model/donor_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import '../../model/event_model.dart';
import '../../network/dio_helper.dart';
import 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  EventCubit(EventState initialState) : super(InitialEventState());

  static EventCubit get(context) => BlocProvider.of(context);
  ClientDatoModel? clientDateModel;
  EventsModel? eventsModel;
  // fetchEvent() {
  //   emit(LoadingEventState());

  //   DioHelpers.getData(url: "client").then((value) {
  //     print(value.data.toString());

  //     eventsModel = EventsModel.fromJson(value.data);
  //     emit(LoadedEventState());
  //   });
  // }

  checkIfDonorExist(context, String clientId, events) {
    emit(LoadingEventState());

    DioHelpers.getData(url: "client/$clientId").then((value) {
      // eventsModel=EventsModel.fromJson(value.data);
      //   showToast("الرقم المدني متواجد", position: ToastPosition.bottom);
      print(value);

      clientDateModel = ClientDatoModel.fromJson(value.data);
      print(value);

      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return orderData(
          clientDatoModel: clientDateModel,
          //    eventsModel: events,
        );
      }));
      print(value);
      emit(LoadedEventState());
    }).catchError((e) {
      print(e);
      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return AddOrderScreen(
            //eventsModel: events
            clientID: clientId);
      }));
      showToast("Please Add Your Data Firstly",
          position: ToastPosition.bottom, duration: Duration(seconds: 4));

      emit(LoadedEventState());
    });
  }
}
