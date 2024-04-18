import 'package:flutter/material.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Description'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/DCTM_Penguin_UK_DK_AL1007936_rt_q2qwiw.jpg',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Gibson Guitar',
            style: TextStyle(color: Colors.white),),
            SizedBox(
              height: 20,
            ),
            Text('Product Description',),
            Text('Rs 300000')
          ],
        ),
      ),
    );
  }
}
