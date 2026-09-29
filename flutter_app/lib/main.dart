import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF2B6CB0),
          surface: Colors.white,
          onSurface: Color(0xFF1B2A44),
          onSurfaceVariant: Color(0xFF5A6472),
          surfaceContainerHighest: Color(0xFFE9EEF5),
        ),
      ),
      home: const ReservationScreen(),
    ),
  );
}

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final _note = TextEditingController();
  var _savedNote = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rezervacija',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _note,
                maxLength: 200,
                decoration: const InputDecoration(
                  labelText: 'Napomena',
                  filled: true,
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _savedNote = _note.text),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B2A44),
                  foregroundColor: Colors.white,
                ),
                child: const Text('Sačuvaj'),
              ),
              const SizedBox(height: 16),
              Text(_savedNote),
            ],
          ),
        ),
      ),
    );
  }
}
