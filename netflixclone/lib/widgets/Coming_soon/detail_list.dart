/*import 'package:flutter/material.dart';

class DetailList extends StatelessWidget {
  const DetailList({super.key});

  @override
  Widget build(BuildContext context) {
    final containerHeight= MediaQuery.of(context).size.height*.5;
    
    return  Expanded(
      child: SizedBox(
        height: containerHeight,
        // width: MediaQuery.of(context).size.width,
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/movieone.jpg', fit: BoxFit.fitWidth,),
         const Padding(
           padding: EdgeInsets.all(8.0),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(Icons.notifications, size: 40,),
                    Text("Remind Me", style: TextStyle(fontSize: 16),),
                  ],
                ),
                 SizedBox(width: 20,),
                 Column(
                  children: [
                    Icon(Icons.share, size: 40,),
                    Text("Share", style: TextStyle(fontSize: 16),),
                  ],
                ),
                ],
            ),
         ),
         const Padding(
           padding:  EdgeInsets.all(8.0),
           child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Season 1 Coming December 14'),
                    Text('Movie Name', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text.rich(
            TextSpan(text:"How to Write a Paragraph? In order to determine how to write a paragraph, you will have to find a good topic and collect enough information regarding the topic.")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Steamy"),
                Center(child:Text(".", style: TextStyle(fontSize: 20),),),
                Text("Steamy"),
                Center(child:Text(".", style: TextStyle(fontSize: 20),),),
                Text("Steamy"),
                Center(child:Text(".", style: TextStyle(fontSize: 20),),),
                Text("Steamy"),
                Center(child:Text(".", style: TextStyle(fontSize: 20),),),
                Text("Steamy"),
                Center(child:Text(".", style: TextStyle(fontSize: 20),),),
                Text("Steamy"),
              ],
            ),  
            ],
           ),
         ),
         ],
      )
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

class DetailList extends StatelessWidget {
  const DetailList({super.key});

  @override
  Widget build(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.5;

    // Example data for the list
    final List<Map<String, dynamic>> details = [
      {
        'image': 'assets/images/movieone.jpg',
        'releaseDate': 'Season 1 Coming December 14',
        'title': 'Movie Name',
        'description':
            'How to Write a Paragraph? In order to determine how to write a paragraph, you will have to find a good topic and collect enough information regarding the topic.',
        'tags': ['Steamy','Soapy','Slow Burn','Suspenseful','Teen', 'Mystery']
      },

      {
        'image': 'assets/images/moviethree.jpg',
        'releaseDate': 'Season 1 Coming December 14',
        'title': 'Jai ho',
        'description':
            'How to Write a Paragraph? In order to determine how to write a paragraph, you will have to find a good topic and collect enough information regarding the topic.',
        'tags': ['Steamy','Soapy','Slow Burn','Suspenseful','Teen', 'Mystery']
      },

      {
        'image': 'assets/images/movietwo.jpg',
        'releaseDate': 'Season 1 Coming December 14',
        'title': 'Badmash Company',
        'description':
            'How to Write a Paragraph? In order to determine how to write a paragraph, you will have to find a good topic and collect enough information regarding the topic.',
        'tags': ['Steamy','Soapy','Slow Burn','Suspenseful','Teen', 'Mystery']
      },
      // Add more items here as needed
    ];

    return Expanded(
      child: SizedBox(
        height: containerHeight,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: details.length,
          itemBuilder: (context, index) {
            final detail = details[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImage(detail['image']),
                _buildActionButtons(),
                _buildDetailText(
                  detail['releaseDate'],
                  detail['title'],
                  detail['description'],
                  detail['tags'],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Image.asset(
      imagePath,
      fit: BoxFit.fitWidth,
    );
  }

  Widget _buildActionButtons() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _ActionButton(
            icon: Icons.notifications,
            label: "Remind Me",
          ),
          SizedBox(width: 20),
          _ActionButton(
            icon: Icons.share,
            label: "Share",
          ),
        ],
      ),
    );
  }

  Widget _buildDetailText(String releaseDate, String title, String description, List<String> tags) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(releaseDate),
          Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text.rich(
            TextSpan(
              text: description,
            ),
          ),
          _buildTagsRow(tags),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }

  Widget _buildTagsRow(List<String> tags) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tags.map((tag) => _buildTag(tag)).toList(),
    );
  }

  Widget _buildTag(String tag) {
    return Row(
      children: [
        Text(tag, style:const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
        // const Center(
        //   child: Text(
        //     ".",
        //     style: TextStyle(fontSize: 20),
        //   ),
        // ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
