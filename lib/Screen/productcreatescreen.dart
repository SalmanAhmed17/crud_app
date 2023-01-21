import 'package:crud_app/Style/style.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  Map<String, String> FormValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "",
    "UnitPrice": "",
    "TotalPrice": "",
  };

  InputOnChange(key, value) {
    setState(() {
      FormValues.update(key, (value) => value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Screen"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ScreenBackground(context),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  decoration: AppInput("Image"),
                  onChanged: ((value) {
                    InputOnChange("Img", value);
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInput("Product Code"),
                  onChanged: ((value) {
                    InputOnChange("ProductCode", value);
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInput("Product Name"),
                  onChanged: ((value) {
                    InputOnChange("ProductName", value);
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                // TextFormField(
                //   decoration: AppInput("Quantity"),
                //   onChanged: ((value) {
                //     InputOnChange("Qty", value);
                //   }),
                // // ),
                // const SizedBox(
                //   height: 20,
                // ),
                TextFormField(
                  decoration: AppInput("Product Total Price"),
                  onChanged: ((value) {
                    InputOnChange("TotalPrice", value);
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInput("Product Unit Price"),
                  onChanged: ((value) {
                    InputOnChange("UnitPrice", value);
                  }),
                ),
                DropdownButton(
                  value: "",
                  items: const [
                    DropdownMenuItem(
                      value: "",
                      child: Text("Select Qty"),
                    ),
                    DropdownMenuItem(
                      value: "1 piece",
                      child: Text("1 piece"),
                    ),
                    DropdownMenuItem(
                      value: "2 piece",
                      child: Text("2 piece"),
                    ),
                    DropdownMenuItem(
                      value: "3 piece",
                      child: Text("3 piece"),
                    ),
                    DropdownMenuItem(
                      value: "4 piece",
                      child: Text("4 piece"),
                    ),
                    DropdownMenuItem(
                      value: "5 piece",
                      child: Text("5 piece"),
                    ),
                  ],
                  onChanged: ((value) {
                    InputOnChange("Qty", value);
                  }),
                  underline: Container(),
                  isExpanded: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                    style: AppButton(),
                    onPressed: () {},
                    child: SuccessButtonChild("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
