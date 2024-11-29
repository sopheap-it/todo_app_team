import 'package:flutter/material.dart';

class WeatherScean extends StatelessWidget {
  final List<Node> nodes = [
    Node('Parent 1', [Node('Child 1a'), Node('Child 1b')]),
    Node('Parent 2', [Node('Child 2a'), Node('Child 2b')]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Node Relationship Example'),
      ),
      body: ListView.builder(
        itemCount: nodes.length,
        itemBuilder: (context, index) {
          return NodeWidget(node: nodes[index]);
        },
      ),
    );
  }
}

class Node {
  final String title;
  final List<Node> children;

  Node(this.title, [this.children = const []]);
}

class NodeWidget extends StatelessWidget {
  final Node node;

  const NodeWidget({Key? key, required this.node}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.arrow_right), // Add an icon to the leading
      title: Text(node.title),
      children: node.children
          .map((child) => Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: NodeWidget(node: child),
      ))
          .toList(),
    );
  }
}
