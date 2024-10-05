import 'package:flutter/material.dart';
import 'package:stripe_payment/APi%20constr/service/Stripe_service.dart';

class Purchase extends StatelessWidget {
  const Purchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stripe Payment"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            StripeServices.instance.makePayment();


          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Purchase",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
        ),
      ),
    );
  }
}
