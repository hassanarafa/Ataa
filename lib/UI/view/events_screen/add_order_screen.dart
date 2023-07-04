import 'package:dms_app/helper/reusaple_componant/custom_button.dart';
import 'package:dms_app/helper/theme/app_colors.dart';
import 'package:dms_app/model/country_model.dart';
import 'package:dms_app/model/gender_model.dart';
import 'package:dms_app/model/govement_model.dart';
import 'package:dms_app/view_model/donor_cupit/donor_cupit.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import '../../../model/event_model.dart';
import '../../../model/marital_status_model.dart';
import '../../../view_model/donor_cupit/donor_state.dart';
import 'package:intl/intl.dart';

class AddOrderScreen extends StatefulWidget {
  String clientID = "";
  //EventItems? eventsModel;
//this.eventsModel,
  AddOrderScreen({Key? key, required this.clientID}) : super(key: key);

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController projectNameController = TextEditingController();

  TextEditingController numberWorkerController = TextEditingController();

  TextEditingController expectedAmoutOfFinancingController =
      TextEditingController();

  TextEditingController expectedProfitController = TextEditingController();

  TextEditingController requiredBankController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Add Order Details')),
      body: BlocProvider(
        create: (context) {
          return OrderCubit(InitialOrderState());
        },
        child: BlocConsumer<OrderCubit, OrderState>(
          listener: (c, b) {},
          builder: (c, b) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    children: [
                      const Text('National ID : '),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(widget.clientID),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Name",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: TextField(
                      controller: ageController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Age",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: TextField(
                        controller: addressController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Address",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: TextField(
                      controller: projectNameController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Project Name",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: TextField(
                        controller: numberWorkerController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Number Of Workers",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: TextField(
                      controller: expectedAmoutOfFinancingController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Expected Amount Of Financing",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: TextField(
                        controller: expectedProfitController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Expected Profit",
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primaryColor),
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: TextField(
                      controller: requiredBankController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Required Bank",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),

                // TextButton(
                //     onPressed: () {
                //       DatePicker.showDatePicker(context,
                //           showTitleActions: true,
                //           minTime: DateTime(1940, 3, 5),
                //           maxTime: DateTime.now(), onChanged: (date) {
                //         print('change $date');
                //       }, onConfirm: (date) {
                //         BlocProvider.of<DonorCubit>(context).changeDate(date);
                //         print(BlocProvider.of<DonorCubit>(context)
                //             .birth_date
                //             .toString());
                //         print(DateFormat('dd-MM-yyyy').format(
                //             BlocProvider.of<DonorCubit>(context).birth_date ??
                //                 DateTime.now()));
                //         setState(() {});
                //       }, currentTime: DateTime.now(), locale: LocaleType.ar);
                //     },
                //     child: Text(
                //       BlocProvider.of<DonorCubit>(context).birth_date == null
                //           ? 'show date time picker (Chinese)'
                //           : DateFormat('dd-MM-yyyy')
                //               .format(BlocProvider.of<DonorCubit>(context)
                //                       .birth_date ??
                //                   DateTime.now())
                //               .toString(),
                //       style: const TextStyle(color: Colors.blue),
                //     )),
                // Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         const Text("رقم الهاتف : "),
                //         Expanded(
                //           child: TextField(
                //             controller: mobil1Controller,
                //             decoration: InputDecoration(
                //                 enabledBorder: OutlineInputBorder(
                //                     borderSide: const BorderSide(
                //                         color: AppColor.primaryColor),
                //                     borderRadius: BorderRadius.circular(8)),
                //                 hintText: "رقم الهاتف",
                //                 border: OutlineInputBorder(
                //                     borderSide: const BorderSide(
                //                         color: AppColor.primaryColor),
                //                     borderRadius: BorderRadius.circular(8))),
                //           ),
                //         ),
                //       ],
                //     )),
                // DropdownSearch<CountryItems>(
                //   label: "الدوله",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchCountry(),
                //   itemAsString: (CountryItems? u) => u?.countryArName ?? "",
                //   onChanged: (CountryItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectedCountryArName =
                //         data!.countryArName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectedCountryCode =
                //         data.countryCode;
                //   },
                // ),
                // DropdownSearch<GovermentItems>(
                //   label: "المنطقه",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchGoverment(),
                //   itemAsString: (GovermentItems? u) => u?.zoneName ?? "",
                //   onChanged: (GovermentItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectedzoneName =
                //         data!.zoneName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectedzonecode =
                //         data.zoneCode.toString();
                //   },
                // ),
                // DropdownSearch<GenderItems>(
                //   label: "الجنس",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchGender(),
                //   itemAsString: (GenderItems? u) => u?.genderArName ?? "",
                //   onChanged: (GenderItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectedGenderArName =
                //         data!.genderArName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectedGenderCode =
                //         data.genderCode;
                //   },
                // ),
                // DropdownSearch<MaritalStatusItems>(
                //   label: "الحاله الاجتماعيه",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchMaritalStatus(),
                //   itemAsString: (MaritalStatusItems? u) =>
                //       u?.maritalStatusArName ?? "",
                //   onChanged: (MaritalStatusItems? data) {
                //     BlocProvider.of<DonorCubit>(context)
                //             .selectedMaritalStatusArName =
                //         data!.maritalStatusArName.toString();
                //     BlocProvider.of<DonorCubit>(context)
                //         .selectedMaritalStatusCode = data.maritalStatusCode;
                //   },
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 5, right: 5),
                  child: customElevatedButtonWithIcon(
                    context,
                    function: () {
                      showToast("Added Successfully",
                          position: ToastPosition.bottom,
                          duration: Duration(seconds: 4));
                      // BlocProvider.of<DonorCubit>(context).postClient(
                      // context,
                      //       events: widget.eventsModel,
                      // required_bank: requiredBankController.text,
                      // client_nationality_id: widget.clientID,
                      // age: ageController.text,
                      // address: addressController.text,
                      // expected_profit: expectedProfitController.text,
                      // name: nameController.text,
                      // project_name: projectNameController.text,
                      // the_expected_amount_of_financing:
                      // expectedAmoutOfFinancingController.text,
                      // fname: fNameController.text,
                      // sname: sNameController.text,
                      // tnmae: tNameController.text,
                      // lname: lNameController.text,
                      // fname_ar: fNameArController.text,
                      // sname_ar: sNameArController.text,
                      // tnmae_ar: tNameArController.text,
                      // lname_ar: lNameArController.text,
                      // mobil1: mobil1Controller.text,
                      // country_code: BlocProvider.of<DonorCubit>(context)
                      //     .selectedCountryCode,
                      // gender_code: BlocProvider.of<DonorCubit>(context)
                      //     .selectedGenderCode,
                      // marital_status_code:
                      //     BlocProvider.of<DonorCubit>(context)
                      //         .selectedMaritalStatusCode,
                      // zone_code: BlocProvider.of<DonorCubit>(context)
                      //     .selectedzonecode,
                      // birth_date: DateFormat('dd-MM-yyyy').format(
                      //     BlocProvider.of<DonorCubit>(context).birth_date ??
                      //         DateTime.now())
                      // );
                    },
                    title: 'Save',
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
//country_code, gender_code, marital_status_code, zone_code
