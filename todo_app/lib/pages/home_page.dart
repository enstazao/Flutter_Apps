import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var task_controller = TextEditingController();
  final tasks_todo = <String>[];

  var _count = 0;
    
  Widget _pushSaved() {

  }

  void _buildList(){
    print("Hello");
  }

  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('WordPair Generator'),
        
              ),
      body: Center(child: Text('You have pressed the button times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
    );
  }
  }