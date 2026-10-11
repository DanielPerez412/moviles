import 'package:flutter/material.dart';

class ContadorNumerico extends StatefulWidget {
  const ContadorNumerico({super.key});

  @override
  State<ContadorNumerico> createState() => _ContadorNumericoState();
}

class _ContadorNumericoState extends State<ContadorNumerico> {
  int _quantity = 0; 
  final int _max = 20;

  void _increase() {
    if (_quantity < _max) {
      setState(() {
        _quantity = _quantity + 1;
      });
    }
  }

  void _decrease() {
    if (_quantity > 0) {
      setState(() {
        _quantity = _quantity - 1;
      });
    }
  }

  void _reset() {
    setState(() {
      _quantity = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF6C3FE0), width: 2),
      ),
      child: Column(
        children: [
          Text(
            '$_quantity',
            style: TextStyle(
              fontSize: 48 + _quantity.toDouble(), 
              fontWeight: FontWeight.bold,
              color: const Color(0xFF6C3FE0),
            ),
          ),
          const SizedBox(height: 8),
          Text(_quantity == 1 ? 'entrada' : 'entradas'),
          const SizedBox(height: 16),
          Container(
            height: 12,
            width: 10.0 + (_quantity * 12),
            decoration: BoxDecoration(
              color: _quantity >= _max ? Colors.red : const Color(0xFFFF7A59),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decrease,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _increase,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(onPressed: _reset, child: const Text('Reiniciar')),
          if (_quantity >= _max)
            const Text('Límite máximo alcanzado', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
