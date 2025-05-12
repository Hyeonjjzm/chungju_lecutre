import 'package:flutter/material.dart';




class TodoLocalPage extends StatefulWidget {
  const TodoLocalPage({super.key});

  @override
  State<TodoLocalPage> createState() => _TodoLocalPageState();
}

class _TodoLocalPageState extends State<TodoLocalPage> {

  final TextEditingController _controller = TextEditingController();

  void _addTodo(){
    print("sadasda");
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
                      controller: controller,
                      onSubmitted: () => _addTodo(),
                      decoration: const InputDecoration(
                          hintText: "할 일을 입력하세요",
                          border: OutlineInputBorder()
                      ),
                    )
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: _addTodo,
                    child: const Text("추가")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
}
