import 'package:flutter/material.dart';

import 'package:mushroom/components/information.dart';
class aboutApp extends StatefulWidget {
  const aboutApp({Key? key}) : super(key: key);

  @override
  State<aboutApp> createState() => _aboutAppState();
}

class _aboutAppState extends State<aboutApp> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        child: Column(
          children:[
            Text('About the App',style: TextStyle(fontSize: 50),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Edible mushrooms are those that are safe and suitable for human consumption. They are nutritious and can be a valuable addition to a healthy diet. Some of the most common edible mushrooms include button mushrooms, portobello mushrooms, shiitake mushrooms, oyster mushrooms, and morels.\n\n'

                  ' Non-edible mushrooms, on the other hand, are those that are either toxic or inedible. Some non-edible mushrooms can be poisonous and potentially lethal if consumed, while others are simply not palatable or have no nutritional value. Some examples of non-edible mushrooms include the death cap mushroom, the fly agaric mushroom, and the false morel mushroom.\n\n'

                  'It is important to note that while many mushrooms are safe to eat, there are also many that can be dangerous or deadly if consumed. Therefore, it is important to be knowledgeable about the types of mushrooms you are consuming and to only eat mushrooms that have been properly identified as safe for consumption. It is also recommended to always purchase mushrooms from a trusted source and to cook them thoroughly before eating to eliminate any potential toxins or harmful compounds.\n\n'

                  'An app that classifies the edibility of mushrooms by sending images through an API would typically use a machine learning model to analyze the image and determine the type of mushroom, and then classify it as edible or non-edible based on a pre-trained algorithm.\n\n'

                  'To develop such an app, the first step would be to collect a large dataset of images of mushrooms, along with their corresponding edibility classification. This dataset would then be used to train a machine learning model, such as a convolutional neural network (CNN), to accurately classify the edibility of mushrooms based on their visual features.\n\n'

                  'Once the model is trained, it can be deployed as an API that can be accessed by an app or website. Users would simply need to take a picture of a mushroom and submit it to the API, which would then classify it as either edible or non-edible.\n\n'

                  'To ensure accuracy and safety, it is important to incorporate proper safeguards into the app, such as a disclaimer stating that the classification is not guaranteed to be 100% accurate and that users should always exercise caution when consuming mushrooms. Additionally, users should be encouraged to double-check the classification with an expert or reputable source before consuming any mushrooms.\n\n'


                ,style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
            ),


            Text('Developers',textAlign: TextAlign.center,textScaleFactor: 3,),
            SingleChildScrollView(

              child: Column(

                children: [ Padding(
                    padding: const EdgeInsets.all(15.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,




                      children: [Row(children: [  Container(

                        padding: const EdgeInsets.all(15.0),

                        child: StudentCard(name: 'Abhisekh Bhandari',),
                      ),
                        SizedBox(height: 250.0,),
                        // SizedBox(width: 5.0,),
                        StudentCard(name: 'Anup Adhikari'),
                        SizedBox(height: 250.0,),]),
                        Row(children: [ Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: StudentCard(name: 'Ichchha Bhattrai',),
                        ),
                        SizedBox(height: 250.0,),
                        SizedBox(width:12.0),
                        // SizedBox(width: 5.0,),
                        StudentCard(name: 'Nitesh Pokhrel'),],)


                      ],
                    )
                ),
                ],




              ),
            ),],
        ),
      ),

    );
  }
}


