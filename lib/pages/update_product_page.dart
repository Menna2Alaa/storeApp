import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/ubdate_product.dart';
import 'package:store_app/widgets/custome_button.dart';
import 'package:store_app/widgets/custome_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String id = 'updateProduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? prodactName, desc, image;
  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Product'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                CustomeTextField(
                  onChanged: (data) {
                    prodactName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(height: 10),
                CustomeTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'description',
                ),
                SizedBox(height: 10),
                CustomeTextField(
                  keyboardType: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'price',
                ),
                SizedBox(height: 10),
                CustomeTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                SizedBox(height: 50),
                CustomeButton(
                  buttonText: 'Update',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UbdateProductService().updateProduct(
      id: product.id,
      title: prodactName == null ? product.title : prodactName!,
      price: price == null ? product.price.toString() : price!,
      description: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
