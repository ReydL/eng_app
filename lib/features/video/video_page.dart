import 'package:eng_app/core/ui/app_container.dart';
import 'package:eng_app/features/video/model/video.dart';
import 'package:eng_app/features/video/widget/video_item.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  static const _videos = [
    Video(
      title: 'Present Simple',
      imagePath:
          'https://s3-alpha-sig.figma.com/img/5ba8/4f7f/044bce921045aab24547b176b53ff5f4?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mCuxh8NDAKr7FiWu2yztVYcLVsucFybyGG4kRWcsPG-v~MOTJkPjphvXadFekBJXZJYiPPJrTiav7-PijnMdX~Hlc9lNdKljH6UKQ3N~MFRYYSRs7k5v363UfQnPa7y0Apjti42eEEg1lAg-r6N-SJCimB-i9m6k1pvGqccU4afi6dIv0ZWdk3s6a~l2ZYbMDNHcCBT31w12tDf3EOIuow9Rhohi62R6iC4A6W~aUAFdW9GK~h5V04wS-CtsQM9wVsIf7vR4gDSulwBLV4gLaogPZGxSKwLo89J~C9Yjb8i9gOlp36VWsyOgks871Bd3jLoZNWAYFs1YtM~ktpgbEw__',
      url: 'https://www.youtube.com/watch?v=6Qd1xAikoQc',
    ),
    Video(
      title: 'parts of speech',
      imagePath:
          'https://s3-alpha-sig.figma.com/img/2de6/bf89/024b12023598afb994715c151d2374b1?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SrrA66oSWFVQ7w-7xJ2lMsRdwZOQmlwKnyuZDA8Yg2LhINne67mQ2LIuMofI7BOxttnF4Lli-BlhLVO0~SbO6U22-c7VBN5O7LfrY~J8S8xs8NbIUEEQphL6BHaSEyKc9IcZ-1Feoi0gKL4V2mfGTviQvG-YXbRmDs9J9rCzR8-P6f6PaJwM689JAgUhBHTEBOgjWabej2v5jj3zkUN4n-UWAZn2anh~qD2UCWOwtITt4EmtFPyFvs2w4aw-lDPVXWhR-bHqPS~V6To0yYhyFiMH3nj8owCaQEi265i4nX-K-MvnSsN4OQoPLr7yautJBM-2MJ~~1SuFg1OH-3R9YQ__',
      url: 'https://www.youtube.com/watch?v=0l69KEx7GQo',
    ),
    Video(
      title: 'Verb to be',
      imagePath:
          'https://s3-alpha-sig.figma.com/img/cafd/b210/2896ffe92894a3a14d3917d37a569853?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=c6XWKa5bzNLuvergwQUfv4wYok0iBG7jjQo~9bnfP82HI-2c3NrvfKW2BZu4P14jwn1OEukcd6RTATdCiVjSmgvbrOj4ywBBEqfUJ8-Mhi6OcRDbwZuy~eGKLexbTrjn0Y-kjt6CTSh8Du9a75TGabHGKAeaFaEa1eePmrL4TaUV3SUqEftwcB7e2rEf9SB9TC~FtnlmCiSmr~ZE4k3yIT7~fJjmcnS58qpCRx1kmv-aV43HBFD8vsKc4s8i1Z83P3uCjoGMlWKOiMmUk8VThqJ43fb~ohzSDnMW3Ts1cpDSjCnEIH4k7AQfILA1-ebqbIMIpF1ktRO-u1jOtEDdnw__',
      url: 'https://www.youtube.com/watch?v=JypzIo4NLqw',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VideoUroki'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 32),
          child: AppContainer(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return VideoItem(
                  video: _videos[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: _videos.length,
            ),
          ),
        ),
      ),
    );
  }
}
