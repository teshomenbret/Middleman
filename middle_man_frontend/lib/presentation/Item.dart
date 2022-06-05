import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:middle_man_frontend/application/item/bloc/item_form_bloc.dart';
import 'package:middle_man_frontend/application/item/bloc/item_form_event.dart';

import '../application/item/bloc/item_form_state.dart';
import '../domain/core/value_objects.dart';
import '../domain/item/i_item_repository.dart';
import '../domain/item/item.dart';
import '../domain/item/value_objects.dart';
import '../infrastructure/data_provider/item/item_remote_data_provider.dart';
import '../infrastructure/repositories/items/item_repository.dart';

class Iteme extends StatefulWidget {
  const Iteme({
    Key? key,
  }) : super(key: key);

  @override
  State<Iteme> createState() => _ItemeState();
}

class _ItemeState extends State<Iteme> {
  bool _isPasswordHidden = true;
  bool _isNetworkInProgress = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstController = TextEditingController();

  TextEditingController secondController = TextEditingController();

  TextEditingController thirdController = TextEditingController();

  TextEditingController fourthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, bottom: 30, top: 100),
                child: Form(
                    key: _formKey,
                    child: ListView(children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text("Add new item",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Intent",
                                fontWeight: FontWeight.w800)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: firstController,
                          decoration: InputDecoration(
                              labelText: 'Item name',
                              hintText: 'Enter item name',
                              labelStyle:
                                  const TextStyle(fontStyle: FontStyle.italic),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: secondController,
                          decoration: InputDecoration(
                              labelText: 'Type',
                              hintText: 'Enter type name',
                              labelStyle:
                                  const TextStyle(fontStyle: FontStyle.italic),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: thirdController,
                          decoration: InputDecoration(
                              labelText: 'Price ',
                              hintText: 'Enter the price ',
                              labelStyle:
                                  const TextStyle(fontStyle: FontStyle.italic),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      TextFormField(
                          controller: fourthController,
                          decoration: InputDecoration(
                              labelText: 'Quantity',
                              hintText: 'Fill the number of Item',
                              labelStyle:
                                  const TextStyle(fontStyle: FontStyle.italic),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                              width: 350,
                              height: 50,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 19, 10, 200)),
                                    elevation: MaterialStateProperty.all(10),
                                  ),
                                  child: const Text(
                                    'Add item',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                  onPressed: () {
                                    var form = Item(
                                        id: UniqueId(),
                                        name: ItemName(firstController.text),
                                        price: ItemPrice(secondController.text),
                                        quantity:
                                            ItemQuantity(thirdController.text),
                                        type: ItemType(fourthController.text),
                                        companyId: UniqueId());

                                    BlocProvider.of<ItemFormBloc>(context).add(
                                      ItemFormEventCreate(form),
                                    );
                                  }

                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => LogIn()));
                                  )))
                    ])))));
  }
}
