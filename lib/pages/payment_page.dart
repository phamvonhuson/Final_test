import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'deliver_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
  }
  class _PaymentPageState extends State<PaymentPage>{
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String cardNumber = '';
    String expiryDate = '';
    String cardHolderName = '';
    String cvvCode = '';
    bool isCvvFocused = false;

    //user want to pay
    void userTappedPay() {
      if (formKey.currentState!.validate()){
        //only show dialog if form is valid
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: const Text("Confirm payment"),
            content: SingleChildScrollView(
              child: ListBody(children: [
                Text("Card Number: $cardNumber"),
                Text("Ex: $cardNumber"),
                Text("Card Holder name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],),
            ),
            actions: [
              //cancel button
              TextButton(onPressed: () => Navigator.pop(context),
                   child: const Text("Cancel"),
                   ),
                   //yes button
                   TextButton(
                    onPressed: () { 
                      Navigator.pop(context);
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DeliverProgressPage(),
                  ),
                  );
                    },
                   child: const Text("Yes"),
                   ),
            ],
          ),
          
          );
      }
    }
  @override
  Widget build(BuildContext context) {
    var themeColor = null;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: const Text("Checkout"),
      ),
      body: Column(
        children: [
          //credit card
          CreditCardWidget(
            cardNumber: cardNumber, 
            expiryDate: expiryDate, 
            cardHolderName: cardHolderName, 
            cvvCode: cvvCode, 
            showBackView: isCvvFocused, 
            onCreditCardWidgetChange: (p0) {},
            ),
            //credit card form
            CreditCardForm(
              cardNumber: cardNumber, 
              expiryDate: expiryDate, 
              cardHolderName: cardHolderName, 
              cvvCode: cvvCode, 
              onCreditCardModelChange: (data){
                setState(() {
                  cardHolderName = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;

                });
              }, 
              formKey: formKey, themeColor: themeColor),
              const Spacer(),
              MyButton(text: "Pay now", onTap: () {}),
              const SizedBox(height: 25),
                ],
      ),
    );
  }
}