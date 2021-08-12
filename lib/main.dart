import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) async {
    final player = AudioCache();
    var bytes = await (await player.load('note$note.wav')).readAsBytes();
    player.playBytes(bytes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(1);
                  },
                  color: Colors.black,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(2);
                  },
                  color: Colors.blue,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(3);
                  },
                  color: Colors.red,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(4);
                  },
                  color: Colors.yellow,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(5);
                  },
                  color: Colors.indigo,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(6);
                  },
                  color: Colors.orange,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(7);
                  },
                  color: Colors.tealAccent,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.tealAccent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
