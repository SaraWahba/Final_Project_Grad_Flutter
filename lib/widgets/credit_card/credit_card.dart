import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({super.key});

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 50),
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: isCvvFocused,
          onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
          obscureCardNumber: true,
          obscureCardCvv: true,
          isHolderNameVisible: true,
          bankName: 'DISC VER',

          customCardTypeIcons: <CustomCardTypeIcon>[
            CustomCardTypeIcon(
              cardType: CardType.mastercard,
              cardImage: Image.asset(
                'assets/images/mastercard.png',
                height: 48,
                width: 48,
              ),
            ),
          ],
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CreditCardForm(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  onCreditCardModelChange: onCreditCardModelChange,
                  formKey: formKey,
                  inputConfiguration: InputConfiguration(
                    cardNumberDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                        hintText: 'XXXX XXXX XXXX XXXX'),
                    expiryDateDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expired Date',
                        hintText: 'xx/xx'),
                    cvvCodeDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'xxx'),
                    cardHolderDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Card Holder',
                        hintText: 'Card Holder'
                    ),
                  ),
                ),
                SizedBox(height: 18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      primary: Colors.deepPurple),

                  child:  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text(
                      'validate',
                      style: TextStyle(
                        color: Colors.white,
                        // fontFamily: 'halter',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        package: 'flutter_credit_card',
                      ),
                    ),
                  ),
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      print('valid');
                    }
                    else{
                      print('inValid');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    )
    ;
  }



  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
