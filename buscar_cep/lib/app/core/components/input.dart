import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Input extends StatelessWidget {
  final String text;
  final void Function(String)? onChanged;
  const Input({Key? key, required this.text, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                //controller: controller.inputSearchText,
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: text,
                  suffixIcon: Icon(Icons.search),
                ),
                inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
           
                              ],
              ),
            );
  }
}