import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Label("Home", fontSize: 20, bold: true),
        centerTitle: false,
        backgroundColor: Colors.lightBlueAccent,
        shadowColor: Colors.lightBlueAccent,
      ),
      body: SelectionArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            Label("Lib Dependencies", fontSize: 18, bold: true),
            Label("common", bold: true),
            CodeBox([
              'implementation("io.github.xiaobaicz:common:0.0.7")',
            ]),
            Label("initializer", bold: true),
            CodeBox([
              'implementation("io.github.xiaobaicz:initializer:0.0.2")',
            ]),
            Label("store", bold: true),
            CodeBox([
              'implementation("io.github.xiaobaicz:store:1.1.1")',
              'implementation("io.github.xiaobaicz:store-mem:1.1.1")',
              'implementation("io.github.xiaobaicz:store-mmkv:1.1.1")',
              'implementation("io.github.xiaobaicz:store-serialize-gson:1.1.1")',
            ]),
            Label("recyclerview-extend", bold: true),
            CodeBox([
              'implementation("io.github.xiaobaicz:recyclerview-extend:2.0.0")',
            ]),
            Label("text", bold: true),
            CodeBox([
              'implementation("io.github.xiaobaicz:text:1.1.1")',
            ]),
            Label("log", bold: true),
            CodeBox([
              'implementation("io.github.xiaobaicz:log:0.0.2")',
              'debugImplementation("io.github.xiaobaicz:log-android:0.0.2")',
            ]),
            Label("------------------------------------"),
            Label("auto-service", bold: true),
            CodeBox([
              'implementation("com.google.auto.service:auto-service-annotations:1.1.1")',
              'kapt("com.google.auto.service:auto-service:1.1.1")',
            ]),
          ],
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label(this.label, {super.key, this.fontSize = 16, this.bold = false});

  final String label;

  final double fontSize;

  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class CodeBox extends StatelessWidget {
  const CodeBox(this.item, {super.key});

  final List<String> item;

  @override
  Widget build(BuildContext context) {
    final childList = <Widget>[];
    for (var value in item) {
      childList.add(Label(value));
    }
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      // color: const Color(0xffdddddd),
      decoration: const BoxDecoration(
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: childList,
      ),
    );
  }
}
