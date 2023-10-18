import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo_view/photo_view.dart';
import '../components/downloadButton.dart';

class FullScreenImage extends StatelessWidget {
  const FullScreenImage({Key? key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;

    // Extract the arguments
    final String regularImage = arguments['image'];
    final String hdImage = arguments['hdImage'];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // simple image
            PhotoView(
              backgroundDecoration: BoxDecoration(
                color: Colors.black, // Set the background color
              ),
              imageProvider: CachedNetworkImageProvider(regularImage),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 2.0,
              enableRotation: true, // Enable image rotation
              loadingBuilder: (BuildContext context, ImageChunkEvent? event) {
                if (event == null) {
                  return Center(
                    child: Container(
                      width: 100,
                      child: Lottie.asset('animation/solarSystem.json'),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: event.expectedTotalBytes != null
                          ? event.cumulativeBytesLoaded /
                              event.expectedTotalBytes!
                          : null,
                    ),
                  );
                }
              },
            ),
            // hd image
            if (hdImage.isNotEmpty)
              Center(
                child: PhotoView(
                  backgroundDecoration: BoxDecoration(
                    color: Colors.black, // Set the background color
                  ),
                  imageProvider: CachedNetworkImageProvider(hdImage),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2.0,
                  enableRotation: true, // Enable image rotation
                  loadingBuilder:
                      (BuildContext context, ImageChunkEvent? event) {
                    if (event == null) {
                      return Center(
                        child: Container(
                          width: 100,
                          child: Lottie.asset('animation/solarSystem.json'),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          value: event.expectedTotalBytes != null
                              ? event.cumulativeBytesLoaded /
                                  event.expectedTotalBytes!
                              : null,
                        ),
                      );
                    }
                  },
                ),
              ),
            SafeArea(
              child: Row(
                children: [
                  DownloadButton(
                    imageURL: regularImage,
                    text: 'DOWNLOAD REGULAR IMAGE',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DownloadButton(
                    imageURL: hdImage,
                    text: 'DOWNLOAD HD IMAGE',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
