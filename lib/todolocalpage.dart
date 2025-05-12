import 'package:flutter/material.dart';




class Todolocalpage extends StatefulWidget {
  const Todolocalpage({super.key});

  @override
  State<Todolocalpage> createState() => _TodolocalpageState();
}

class _TodolocalpageState extends State<Todolocalpage> {
  
  final TextEditingController _controller = TextEditingController();
  
  void _addTodo(){
    print("asdfgfds");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로컬 To-Do"),
      ),
      body: Column(
       children: [
         Padding(
             padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: _controller,
                        onSubmitted: (_) => _addTodo(),
                        decoration: const InputDecoration(
                          hintText: "할일을 입력하세요.",
                          border: OutlineInputBorder()
                        ),
                      )
                  ), 
                  const SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: _addTodo, 
                      child: const Text('추가')
                  )
                ],
              ),
         )
       ],
        ),
      ),
    );
  }
}
