import 'package:dms_app/model/bank_branch_model.dart';
import 'package:dms_app/model/bank_model.dart';
import 'package:dms_app/model/donor_data_model.dart';
import 'package:dms_app/model/event_model.dart';
import 'package:dms_app/model/org_bank_account.dart';
import 'package:dms_app/model/receive_dept_model.dart';
import 'package:dms_app/network/dio_helper.dart';
import 'package:dms_app/view_model/donor_cupit/donor_cupit.dart';
import 'package:dms_app/view_model/donor_cupit/donor_state.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../helper/reusaple_componant/custom_button.dart';
import '../../../helper/theme/app_colors.dart';
import '../../../model/govement_model.dart';
import '../../../model/pay_model.dart';
import '../../../view_model/event_cupit/event_cubit.dart';
import 'event_screen.dart';

class orderData extends StatelessWidget {
  ClientDatoModel? clientDatoModel;
  // EventItems? eventsModel;
  orderData({
    Key? key,
    required this.clientDatoModel,
    //this.eventsModel
  }) : super(key: key);
  TextEditingController BILL_TRANSFER_NOcontroller = TextEditingController();
  TextEditingController DONOR_ACCOUNT_NOcontroller = TextEditingController();
  TextEditingController DONNATION_AMOUNTcontroller = TextEditingController();
  TextEditingController KNET_NOcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //print("${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: BlocProvider(
        create: (context) {
          return OrderCubit(InitialOrderState());
        },
        child: BlocConsumer<OrderCubit, OrderState>(
          listener: (c, b) {},
          builder: (c, b) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Support Request ID : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                            "   ${clientDatoModel?.client_nationality_id} ",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Support Request Name : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          " ${clientDatoModel?.name} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Age : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${clientDatoModel?.age} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Address : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${clientDatoModel?.address} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Project-Name  :  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${clientDatoModel?.project_name} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Project-Details  :  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: clientDatoModel?.project_details == null
                            ? Text(
                                "  ...  ",
                                style: TextStyle(color: Colors.black),
                              )
                            : Text(
                                "${clientDatoModel?.project_details} ",
                                style: TextStyle(color: Colors.black),
                              ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'number-of-factory-or-company-workers   :  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: clientDatoModel
                                    ?.number_of_factory_or_company_workers ==
                                null
                            ? Text(
                                "  ...  ",
                                style: TextStyle(color: Colors.black),
                              )
                            : Text(
                                "${clientDatoModel?.number_of_factory_or_company_workers} ",
                                style: TextStyle(color: Colors.black),
                              ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Expected Amount Of Support  :  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${clientDatoModel?.the_expected_amount_of_financing} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Expected Benefit  :  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${clientDatoModel?.expected_profit} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Required Bank  :  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "${clientDatoModel?.expected_profit} ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, right: 8),
                  child: Text(
                    "It's not allowed to add more than one request for same id",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
                // DropdownSearch<ReceiveDeptItems>(
                //   label: "التبرع لصالح فرع",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchReceiveDept(),
                //   itemAsString: (ReceiveDeptItems? u) => u?.deptArName ?? "",
                //   onChanged: (ReceiveDeptItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectDeptArName =
                //         data!.deptArName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectDeptCode =
                //         data.deptCode.toString();
                //   },
                // ),
                // DropdownSearch<OrgBankItems>(
                //   label: "طلب علي حساب ",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchOrgAcc(),
                //   itemAsString: (OrgBankItems? u) => u?.bankName ?? "",
                //   onChanged: (OrgBankItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectBankName =
                //         data!.bankName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectBankBranchCode =
                //         data.bankBranchCode;
                //     BlocProvider.of<DonorCubit>(context).selectAccountNo =
                //         data.accountNo.toString();
                //     BlocProvider.of<DonorCubit>(context).selectBankCode =
                //         data.bankCode;
                //     BlocProvider.of<DonorCubit>(context).selectOrgCode =
                //         data.orgCode;
                //   },
                // ),
                // Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         Text("قيمه الطلب : "),
                //         Expanded(
                //           child: TextField(
                //             controller: DONNATION_AMOUNTcontroller,
                //             decoration: InputDecoration(
                //                 hintText: "ادخل قيمه المبلغ المطلوب للدعم",
                //                 // enabledBorder: OutlineInputBorder(
                //                 //     borderSide: BorderSide(color: AppColor.primaryColor),
                //                 //     borderRadius: BorderRadius.circular(8)),
                //                 border: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: AppColor.primaryColor),
                //                     borderRadius: BorderRadius.circular(8))),
                //           ),
                //         )
                //       ],
                //     )),
                // DropdownSearch<PayModelItems>(
                //   label: "طريقه تقديم الدعم ",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchPayType(),
                //   itemAsString: (PayModelItems? u) => u?.paytypeArName ?? "",
                //   onChanged: (PayModelItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectedpaytypearname =
                //         data!.paytypeArName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectedpaytypecode =
                //         data.payTypeCode;
                //   },
                // ),
                // DropdownSearch<BankItems>(
                //   label: "من فضلك اختار البنك الخاص بك",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchBank(),
                //   itemAsString: (BankItems? u) => u?.bankArName ?? "",
                //   onChanged: (BankItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectBankArName =
                //         data!.bankArName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectbankCode =
                //         data.bankCode;
                //   },
                // ),
                // DropdownSearch<BankBranchItems>(
                //   label: "فرع البنك ",
                //   onFind: (String? filter) =>
                //       BlocProvider.of<DonorCubit>(context).fetchBankBranch(),
                //   itemAsString: (BankBranchItems? u) => u?.branchArName ?? "",
                //   onChanged: (BankBranchItems? data) {
                //     BlocProvider.of<DonorCubit>(context).selectBranchArName =
                //         data!.branchArName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectBranchCode =
                //         data.bankBranchCode;
                //   },
                // ),
                // Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         Text("رقم كرت البنك : "),
                //         Expanded(
                //           child: TextField(
                //             controller: KNET_NOcontroller,
                //             decoration: InputDecoration(
                //                 hintText: "ادخل رقم كرت البنك الخاص بك ",
                //                 border: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: AppColor.primaryColor),
                //                     borderRadius: BorderRadius.circular(8))),
                //           ),
                //         )
                //       ],
                //     )),
                // Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         Text("رقم الحساب : "),
                //         Expanded(
                //           child: TextField(
                //             controller: DONOR_ACCOUNT_NOcontroller,
                //             decoration: InputDecoration(
                //                 hintText: "ادخل رقم الحساب الخاص بك ",
                //                 border: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: AppColor.primaryColor),
                //                     borderRadius: BorderRadius.circular(8))),
                //           ),
                //         )
                //       ],
                //     )),
                // Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         Text("رقم التحويل : "),
                //         Expanded(
                //           child: TextField(
                //             controller: BILL_TRANSFER_NOcontroller,
                //             decoration: InputDecoration(
                //                 hintText: "ادخل رقم التحويل ",
                //                 border: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: AppColor.primaryColor),
                //                     borderRadius: BorderRadius.circular(8))),
                //           ),
                //         )
                //       ],
                //     )),
                // DropdownSearch<GovermentItems>(
                //   label: "المحافظه ",
                //   onFind: (String ?filter) =>BlocProvider.of<DonorCubit>(context).fetchGoverment(),
                //   itemAsString: (GovermentItems? u) => u?.zoneName ??"",
                //   onChanged: (GovermentItems ?data) {
                //     BlocProvider.of<DonorCubit>(context).selectedzoneName=data!.zoneName.toString();
                //     BlocProvider.of<DonorCubit>(context).selectedzonecode=data.zoneCode.toString();
                //   },
                // ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 5, right: 5),
                  child: customElevatedButtonWithIcon(
                    context,
                    function: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => EventScreen()),
                          (Route<dynamic> route) => false);
                    },
                    title: 'Back To Main Page',
                  ),
                )
              ]),
            );
          },
        ),
      ),
    );
  }
}
