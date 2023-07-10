import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/screens/lab_test/lab_test_list/components/lab_list1_card_list.dart';
import '../../../data/response/status.dart';
import '../../../utils/color_styles.dart';
import '../../../view_model/lab_test_list_view_model/lab_test_list_view_model.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/drawer_widget.dart';
import '../../../widgets/resuable_header.dart';
import 'components/lab_test_list_filter_widget.dart';
import 'lab_test_list_details.dart';

class LatTestListScreen extends StatefulWidget {
  const LatTestListScreen({Key? key}) : super(key: key);

  @override
  State<LatTestListScreen> createState() => _LatTestListScreenState();
}

class _LatTestListScreenState extends State<LatTestListScreen> {
  final labTestListVm = Get.put(LabTestListViewModel());

  final scrollerController = ScrollController();
  int page = 1;


  @override
  void initState() {
    scrollerController.addListener(_scrollListener);
    labTestListVm.getLabTestListData(page: 1, labStatus: 0, isRefreshed: true);

    super.initState();
  }

  void _scrollListener() async {
    if (scrollerController.position.pixels ==
        scrollerController.position.maxScrollExtent) {
      await labTestListVm.getLabTestListData(
          isRefreshed: false, labStatus: labTestListVm.categoryId.value);
    }
  }


  @override
  void dispose() {
    scrollerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        actions: [
          const AppBarWidget(),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          LabTestListFilterWidget(
            textField1HintText: 'Labtest Name',
            onClick: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          ResuableHeader(
            leadingText: 'Test Name',
            titleText: 'Code',
            tralingText: 'Category',
          ),
          Expanded(
            child: Obx(() {
              switch (labTestListVm.rxRequestStatus.value) {
                case Status.LOADING:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );

                case Status.ERROR:
                  print("error ${labTestListVm.error.value.toString()}");
                  return Text(labTestListVm.error.value.toString());

                case Status.SUCCESS:
                  if (labTestListVm.labTestListData.value.items?.length ==
                      null) {
                    return const Text("item not found");
                  } else {
                    return ListView.builder(
                        controller: scrollerController,
                        itemCount: labTestListVm.items.length + 1,
                        itemBuilder: (context, index) {
                          if (index < labTestListVm.items.length) {

                            return Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8),
                              child: LabList1CardList(
                                  onTap: () {
                                    print("lab test ${labTestListVm.items[index].name}");
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LabTestListDetailsScreen(
                                                  code: labTestListVm.items[index].code,
                                                  testName: labTestListVm.items[index].name,
                                                  category: labTestListVm.items[index].itemCategory?.items,
                                                  reportSerialNO: labTestListVm.items[index].labItemSerialNo,
                                                  labReportGroup: labTestListVm.items[index].labReportGroup?.name,
                                                  chargePrice: labTestListVm.items[index].salePrice,
                                                  refferCommission: labTestListVm.items[index].itemCategory?.referralCommission,
                                                )));
                                  },
                                  title: "${labTestListVm.items[index].name}",
                                  code: labTestListVm.items[index].code,
                                  category: labTestListVm
                                      .items[index].itemCategory!.name,
                                  price: labTestListVm.items[index].salePrice),
                            );
                          }
                          if (index == labTestListVm.items.length) {
                            return labTestListVm.hasReachedMax.value
                                ? const SizedBox()
                                : const Center(
                                child: CircularProgressIndicator());
                          }
                          return const SizedBox();
                        });
                  }
              }
            }),
          )
        ],
      ),
    );
  }
}
