import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: MediaQuery.of(context).size.width,
      height: 200,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.network(
          'https://1.bp.blogspot.com/-UpVasBuRmB4/YHBb2nnbhzI/AAAAAAAAGyA/ogMeufJ1aPcbGyxIuyaY1HF0JbSG4qzcQCLcBGAsYHQ/s1920/REFERRAL%2BCODE.jpg',
          fit: BoxFit.fill,
          
        ),
      ],
    );
  }
}
