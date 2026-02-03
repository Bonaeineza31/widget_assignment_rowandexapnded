import 'package:flutter/material.dart';
import '../widgets/stat_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row vs Expanded Demo"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "1) Without Expanded",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _statsRowWithoutExpanded(),

            // adding more space between the two sections
            const SizedBox(height: 50),
            const Divider(),
            const SizedBox(height: 50),

            const Text(
              "2) With Expanded",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _statsRowWithExpanded(),
          ],
        ),
      ),
    );
  }

  //  WITHOUT Expanded
  Widget _statsRowWithoutExpanded() {
    return Row(
      children: const [
        StatBox(width: 110, number: "120", label: "Posts"),
        SizedBox(width: 10),
        StatBox(width: 110, number: "2.4K", label: "Followers"),
        SizedBox(width: 10),
        StatBox(width: 110, number: "180", label: "Following"),
        SizedBox(width: 10),
        StatBox(width: 110, number: "200", label: "likes"),
      ],
    );
  }

  // WITH Expanded
  Widget _statsRowWithExpanded() {
    return Row(
      children: const [
        Expanded(child: StatBox(number: "120", label: "Posts")),
        SizedBox(width: 10),
        Expanded(child: StatBox(number: "2.4K", label: "Followers")),
        SizedBox(width: 10),
        Expanded(child: StatBox(number: "180", label: "Following")),
        SizedBox(width: 10),
        Expanded(child: StatBox(number: "200", label: "Likes")),
      ],
    );
  }
}
