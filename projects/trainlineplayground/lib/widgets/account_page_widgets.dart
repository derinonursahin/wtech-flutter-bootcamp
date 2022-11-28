import 'package:flutter/material.dart';

class PushRow extends StatelessWidget {
  const PushRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      Padding(padding: EdgeInsets.only(left: 15)),
       Icon(Icons.notifications),
       Padding(padding: EdgeInsets.only(left: 15)),
       Text("Push notifications"),
     
     ]);
  }
}

class PrivacyChoiceRow extends StatelessWidget {
  const PrivacyChoiceRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      Padding(padding: EdgeInsets.only(left: 15)),
       Icon(Icons.lock),
       Padding(padding: EdgeInsets.only(left: 15)),
       Text("Your privacy choices"),
     
     ]);
  }
}

class MoneyRow extends StatelessWidget {
  const MoneyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Padding(padding: EdgeInsets.only(left: 15)),
      const Icon(Icons.attach_money_rounded),
      const Padding(padding: EdgeInsets.only(left: 15)),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
           Text("Currency"),
           Text("Ş / USD")
        ],
      ),
    
      
    ]);
  }
}

class AppSettingsRow extends StatelessWidget {
  const AppSettingsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        Padding(padding: EdgeInsets.only(left: 15)),
         Text("App Settings",style: TextStyle(fontSize: 22),),
      ],
    );
  }
}

class BusinesBookRow extends StatelessWidget {
  const BusinesBookRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      Padding(padding: EdgeInsets.only(left: 15)),
      Icon(Icons.business_center),
      Padding(padding: EdgeInsets.only(left: 15)),
      Text("Business bookings"),
      
    ]);
  }
}

class BusinessRow extends StatelessWidget {
  const BusinessRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        Padding(padding: EdgeInsets.only(left: 15)),
         Text("Trainline Business",style: TextStyle(fontSize: 22),),
      ],
    );
  }
}

class RailCardsRow extends StatelessWidget {
  const RailCardsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      Padding(padding: EdgeInsets.only(left: 15)),
      Icon(Icons.chrome_reader_mode_outlined),
      Padding(padding: EdgeInsets.only(left: 15)),
      Text("Railcards"),
      
    ]);
  }
}

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      Padding(padding: EdgeInsets.only(left: 15)),
      Icon(Icons.credit_card),
      Padding(padding: EdgeInsets.only(left: 15)),
      Text("Payment Methods"),
      
    ]);
  }
}

class BookingRow extends StatelessWidget {
  const BookingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        Padding(padding: EdgeInsets.only(left: 15)),
         Text("Booking preferences",style: TextStyle(fontSize: 22),),
      ],
    );
  }
}

class MessagesRow extends StatelessWidget {
  const MessagesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        const Padding(padding: EdgeInsets.only(left: 15)),
        const Icon(Icons.local_post_office_outlined),
        const Padding(padding: EdgeInsets.only(left: 30)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Text("Messages",style:TextStyle(fontSize: 17),),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text("You have no new messages")
          ],
        )
      ],
    );
  }
}

class accountContainer extends StatelessWidget {
  const accountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
        color: Colors.purple,
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Padding(padding: EdgeInsets.only(left: 15)),
              Text("Account",style:TextStyle(fontSize: 20,color: Colors.white)),
            ],
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Padding(padding: EdgeInsets.only(left: 15)),
              Text("buraya user email gelecek apiden!",style: TextStyle(color: Colors.white),),
            ],
          )
        ],
      ),
    );
  }
}
