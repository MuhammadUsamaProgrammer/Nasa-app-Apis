import 'package:apistest/app/common/circularIndicater.dart';
import 'package:flutter/material.dart';
import '../model/nBA_App_Model.dart';
import '../viewModel/nBA_App_ViewModel.dart';

// ignore: must_be_immutable
class NBAAppScreen extends StatelessWidget {
  NBAAppScreen({super.key});

  NBAAppViewModel nBAAppViewModel = NBAAppViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder<NbaApp>(
            future: nBAAppViewModel.getNbaApi(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return CustomCircularProgressIndicator();
              } else
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data?.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(0, 2),
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Full Name : ' +
                                    snapshot.data!.data[index].firstName
                                        .toString() +
                                    ' ' +
                                    snapshot.data!.data[index].lastName
                                        .toString()),
                                Text('Height in feet : ' +
                                    snapshot.data!.data[index].heightFeet
                                        .toString()),
                                Text('Height in inches : ' +
                                    snapshot.data!.data[index].heightInches
                                        .toString()),
                                Text('Class : ' +
                                    snapshot.data!.data[index].position
                                        .toString()),
                                Text('Weight in pounds : ' +
                                    snapshot.data!.data[index].weightPounds
                                        .toString()),
                                Text('Team ID : ' +
                                    snapshot.data!.data[index].team.id
                                        .toString()),
                                Text('Team Abbreviation : ' +
                                    snapshot.data!.data[index].team.abbreviation
                                        .toString()),
                                Text('Team City : ' +
                                    snapshot.data!.data[index].team.city
                                        .toString()),
                                Text('Team Conference : ' +
                                    snapshot.data!.data[index].team.conference
                                        .toString()),
                                Text('Team Division : ' +
                                    snapshot.data!.data[index].team.division
                                        .toString()),
                                Text('Team Name : ' +
                                    snapshot.data!.data[index].team.name
                                        .toString()),
                                Text('Team FullName : ' +
                                    snapshot.data!.data[index].team.fullName
                                        .toString()),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
            },
          )
        ],
      ),
    );
  }
}
