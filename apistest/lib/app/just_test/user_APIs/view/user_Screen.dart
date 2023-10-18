import 'package:apistest/app/just_test/user_APIs/viewModel/userViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/circularIndicater.dart';

// ignore: must_be_immutable
class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Consumer<UserProvider>(
            builder: (context, value, child) {
              return FutureBuilder(
                future: value.getUsersApi(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CustomCircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (value.usersList.isEmpty) {
                    return Center(child: Text('No data available'));
                  } else
                    return Expanded(
                      child: ListView.builder(
                        itemCount: value.usersList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
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
                                    Text(
                                      'ID : ' +
                                          value.usersList[index].id.toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Name : ' +
                                          value.usersList[index].name
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'User Name : ' +
                                          value.usersList[index].username
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Email : ' +
                                          value.usersList[index].email
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text('Address:'),
                                    Text(
                                      '                Street : ' +
                                          value.usersList[index].address.street
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '                Suite : ' +
                                          value.usersList[index].address.suite
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '                City : ' +
                                          value.usersList[index].address.city
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '                Zipcode : ' +
                                          value.usersList[index].address.zipcode
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '                Location on Map : ' +
                                          value.usersList[index].address.geo.lat
                                              .toString() +
                                          ' : ' +
                                          value.usersList[index].address.geo.lng
                                              .toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
