import 'package:flutter/material.dart';
import 'package:neu_music_player_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            children: [

              //top PART OF the page
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeuBox(child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(Icons.arrow_back),
                  )),

                  Text('P L A Y L I S T'),
                  
                  NeuBox(child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(Icons.menu),
                  ))
                ],
              ),
              SizedBox(height: 25,),
              
              //Music art and name of artist
              
              NeuBox(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('lib/images/coverimage.png',
                        fit: BoxFit.cover,
                        height: 350,
                        width: double.infinity,),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kota The Friend', style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade600
                              ),),
                              Text('Birdie', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23
                              ),),
                            ],
                          ),
                          Icon(Icons.favorite_rounded,color: Colors.red,size: 35,)
                        ],
                      ),
                    )
                  ],
                ),
              )),

              //music progress bar and buttons

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0.00'),
                        Icon(Icons.shuffle),
                        Icon(Icons.repeat),
                        Text('4.22'),
                      ],
                    ),
                  ),
                 NeuBox(child:  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: LinearPercentIndicator(
                     width: 300,
                     barRadius: Radius.circular(30),
                     lineHeight: 10,
                     percent: 0.9,
                     progressColor: Colors.green,
                     backgroundColor: Colors.transparent,
                   ),
                 )
                  )
                ],
              ),
              SizedBox(height: 30,),

              //play buttons

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  NeuBox(child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Icon(
                      Icons.skip_previous
                    ),
                  )),
                  NeuBox(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 28.0),
                    child: Icon(
                        Icons.play_arrow
                    ),
                  )),
                  NeuBox(child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Icon(
                        Icons.skip_next
                    ),
                  )),
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
