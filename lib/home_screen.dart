import 'package:bloc_practice1/core/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello There"),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.isIncremented) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Incrementd !")));
                }
              },
              builder: (context, state) {
                print("--------------------- gets called------${state.count}");
                return Text("Couint ${state.count}");
              },
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().countDecrement();
                  },
                  child: Text("- Decrement -"),
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).countIncrement();
                  },
                  child: Text("+ Increment +"),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: DataTable(
                    showCheckboxColumn: true,
                    headingRowHeight: 100,
                    dataRowMinHeight: 80,
                    dataRowMaxHeight: 80,
                    border: TableBorder.all(color: Colors.black),
                    showBottomBorder: true,
                    headingRowColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                        return Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.08);
                      },
                    ),
                    columns: [
                      getDataColumn(title: "#", width: 40),
                      getDataColumn(title: "Course\nNAME", width: 80),
                      getDataColumn(title: "Student\nCode", width: 80),
                      getDataColumn(title: "Student\nNAME", width: 80),
                      getDataColumn(title: "Class\nNAME", width: 80),
                      getDataColumn(title: "Add Summary", width: 110),
                    ],
                    rows: List.generate(
                      10,
                      (i) {
                        return DataRow(
                          color: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              return Theme.of(context)
                                  .colorScheme
                                  .primaryFixed
                                  .withOpacity(0.08);
                            },
                          ),
                          cells: [
                            getDataCell(title: "${i + 1}"),
                            getDataCell(title: "Name -------$i"),
                            getDataCell(title: "Code ----$i---11111111111"),
                            getDataCell(
                                title: "Stuene ---$i----11111111111" * 5,
                                height: 250),
                            getDataCell(title: "Class --$i-----11111111111"),
                            // create summary button
                            DataCell(
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Create Summary"),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DataColumn getDataColumn({required String title, required double width}) {
  return DataColumn(
    label: SizedBox(
      width: width,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    ),
  );
}

DataCell getDataCell(
    {required String title, double width = 100, double height = 100}) {
  return DataCell(
    SizedBox(
      height: height,
      width: 140,
      child: Text(
        title,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
