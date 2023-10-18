import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import '../../../common/text/customText.dart';

class DownloadButton extends StatelessWidget {
  final String imageURL;
  final String text;
  const DownloadButton({
    super.key,
    required this.imageURL,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: CustomText(
          text: 'Image download will be ready shortly',
          color: Colors.grey,
        )));
        await GallerySaver.saveImage(imageURL, albumName: 'NASA');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: CustomText(
          text: 'Downloaded to gallery',
          color: Colors.grey,
        )));
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: CustomText(
          text: text,
          color: Colors.white,
          textSize: 10,
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
