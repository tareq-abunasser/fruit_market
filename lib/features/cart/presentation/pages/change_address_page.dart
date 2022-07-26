import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/space_widget.dart';

class ChangeAddressPage extends StatelessWidget {
  const ChangeAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Change Address"),
            backgroundColor: Theme.of(context).primaryColor),
        body: SingleChildScrollView(
          child: Column(
            children:  [
              const CustomText(
                text: "Address",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              TextField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),

              ),
              VerticalSpace(value: SizeConfig.defaultSize! * 5),
              CustomGeneralButton(
                text: 'Change',
                onTap: () {
                },
              )
            ],
          ),
        )
    );
  }
}
