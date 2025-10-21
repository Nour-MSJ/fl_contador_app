import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(title: Text('HomeScreen'), elevation: 50.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: tamano30),
            SizedBox(height: 20),
            Text('$contador', style: tamano30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButtom(
        incrementarFn: incrementar,
        decrementarFn: decrementar,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActionButtom extends StatelessWidget {
  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetFn;

  const CustomFloatingActionButtom({
    super.key,
    required this.incrementarFn,
    required this.resetFn,
    required this.decrementarFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: const Text('-1'),
          onPressed: () => decrementarFn(),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          child: const Text('RESET'),
          onPressed: () => resetFn(),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          child: const Text('+1'),
          onPressed: () => incrementarFn(),
        ),
      ],
    );
  }
}
