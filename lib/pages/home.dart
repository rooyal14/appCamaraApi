import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("tituulo da barra"),
          backgroundColor: const Color(0xffff0000),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 300),
            _titulo(),
            const SizedBox(height: 80),
            _barraDePesquisa()
          ],
        ));
  }

  Center _titulo() {
    return const Center(
      child: Text(
        "BUSCA",
        style: TextStyle(
            color: Colors.black, fontSize: 36, fontWeight: FontWeight.w600),
      ),
    );
  }

  Center _barraDePesquisa() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0)
        ]),
        child: const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blueGrey,
            contentPadding: EdgeInsets.all(15),
            hintText: 'aoba',
            hintStyle: TextStyle(color: Color(0xffDDDADA), fontSize: 14),
          ),
        ),
      ),
    );
  }
}

class _titulo extends StatelessWidget {
  const _titulo();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "BUSCA",
        style: TextStyle(
            color: Colors.black, fontSize: 36, fontWeight: FontWeight.w600),
      ),
    );
  }
}
