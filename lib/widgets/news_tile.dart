import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvvyE4zqnOFYBHSEtasMhQvd_08zPrbd9ikNO3H28SWKlkC_N6bN39Krw&s=10',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 9),
        Text(
          'The Saudi capital’s King Khalid International Airport is among the few major airports in the region still operating normally after Iranian missile and drone strikes targeted cities including Dubai and Abu Dhabi over the weekend, as well as locations in Qatar and Bahrain.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        SizedBox(height: 20),
        Text(
          'The Saudi Central Bank (SAMA) has decided to raise its repo rate by 0.25 percent from 1.00 to 1.25 percent and the reverse repo rate by 0.25 percent from 0.5 to 0.75 percenPolicy rate adjustments are consistent with SAMAs objectives of maintaining monetary stability and supporting the stability of the financial sector in the',
        ),
      ],
    );
  }
}
