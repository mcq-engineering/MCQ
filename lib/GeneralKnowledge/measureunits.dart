import 'package:flutter/material.dart';

class UnitConverterScreen extends StatefulWidget {
  const UnitConverterScreen({super.key});

  @override
  State<UnitConverterScreen> createState() => _UnitConverterScreenState();
}

class _UnitConverterScreenState extends State<UnitConverterScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit Conversion Explorer'),
        backgroundColor: Colors.blueAccent,
        elevation: 4,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.scale), text: 'Mass/Weight'),
            Tab(icon: Icon(Icons.route), text: 'Length/Distance'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildMassTab(),
          _buildLengthTab(),
        ],
      ),
    );
  }

  // --- Mass/Weight Tab Content ---
  Widget _buildMassTab() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildSectionHeader('Metric Mass Units (Base: Gram)'),
        _buildMetricUnitCard(
          title: 'Decagram (dag)',
          value: '10 grams (g)',
          description: '1 dag = 0.1 hg\n1 dag = 0.01 kg',
        ),
        _buildMetricUnitCard(
          title: 'Hectogram (hg)',
          value: '100 grams (g)',
          description: '1 hg = 10 dag\n1 hg = 0.1 kg',
        ),
        _buildMetricUnitCard(
          title: 'Kilogram (kg)',
          value: '1000 grams (g)',
          description: 'The SI base unit of mass.\n1 kg = 10 hg\n1 kg = 100 dag',
        ),
        _buildMetricUnitCard(
          title: 'Quintal (q)',
          value: '100 kilograms (kg)',
          description: 'Commonly used for bulk agricultural goods (e.g., India).\n1 quintal ≈ 220.46 pounds (lb)',
        ),

        const SizedBox(height: 20),

        _buildSectionHeader('Imperial Mass Conversions'),

        // **NEW: Ounce to Gram**
        _buildConversionCard(
          unitA: 'Ounce (oz)',
          unitB: 'Gram (g)',
          conversion: '1 oz ≈ 28.3495 g',
          reverse: '1 g ≈ 0.03527 oz',
          explanation: 'The ounce is a common imperial unit for measuring food portions and small weights.',
        ),

        // **NEW: Pound to Kilogram/Gram**
        _buildConversionCard(
          unitA: 'Pound (lb)',
          unitB: 'Kilogram (kg) / Gram (g)',
          conversion: '1 lb = 0.453592 kg',
          reverse: '1 kg ≈ 2.20462 lb',
          explanation: 'The pound is the primary unit of mass in the US/Imperial system. 1 lb is also approximately 453.59 grams.',
        ),
      ],
    );
  }

  // --- Length/Distance Tab Content ---
  Widget _buildLengthTab() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildSectionHeader('Linear Distance Conversions'),

        // Linear Conversions
        _buildConversionCard(
          unitA: 'Meter (m)',
          unitB: 'Yard (yd)',
          conversion: '1 m ≈ 1.09361 yd',
          reverse: '1 yd = 0.9144 m (exactly)',
          explanation: 'The meter is slightly longer than a yard, which is defined as three feet.',
        ),
        _buildConversionCard(
          unitA: 'Kilometer (km)',
          unitB: 'Mile (mi)',
          conversion: '1 km ≈ 0.621371 mi',
          reverse: '1 mi = 1.609344 km (exactly)',
          explanation: 'A mile is significantly longer than a kilometer, a typical distance for road signs outside the US/UK.',
        ),
        _buildConversionCard(
          unitA: 'Meter (m)',
          unitB: 'Foot (ft)',
          conversion: '1 m ≈ 3.28084 ft',
          reverse: '1 ft = 0.3048 m (exactly)',
          explanation: 'The foot is one-third of a yard and commonly used for human height and short distances.',
        ),
        _buildConversionCard(
          unitA: 'Kilometer (km)',
          unitB: 'Nautical Mile (nmi)',
          conversion: '1 km ≈ 0.539957 nmi',
          reverse: '1 nmi = 1.852 km (exactly)',
          explanation: 'The Nautical Mile is the standard unit for sea and air travel, defined based on the Earth\'s circumference.',
        ),

        const SizedBox(height: 20),

        _buildSectionHeader('Area Conversions'),

        // Area Conversion
        _buildConversionCard(
          unitA: 'Square Kilometer (km²)',
          unitB: 'Square Mile (mi²)',
          conversion: '1 km² ≈ 0.386102 mi²',
          reverse: '1 mi² ≈ 2.589988 km²',
          explanation: 'Converting area involves squaring the linear conversion factor. A square mile is about 2.6 times larger than a square kilometer.',
        ),
      ],
    );
  }

  // --- Helper Widgets ---

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
        ),
      ),
    );
  }

  // Helper for pure metric units (Decagram, Hectogram, Kilogram, Quintal)
  Widget _buildMetricUnitCard({required String title, required String value, required String description}) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: const Icon(Icons.fitness_center, color: Colors.teal),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('Base Value: $value', style: const TextStyle(fontStyle: FontStyle.italic)),
            const Divider(height: 8),
            Text(description),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }

  // Helper for metric-imperial conversions (renamed for clarity)
  Widget _buildConversionCard({
    required String unitA,
    required String unitB,
    required String conversion,
    required String reverse,
    String? explanation,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$unitA vs. $unitB',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const Divider(),
            _buildConversionRow(label: '${unitA.split('(').first.trim()} to ${unitB.split('(').first.trim()}', value: conversion),
            _buildConversionRow(label: '${unitB.split('(').first.trim()} to ${unitA.split('(').first.trim()}', value: reverse),
            if (explanation != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  explanation,
                  style: const TextStyle(fontSize: 12, color: Colors.grey, fontStyle: FontStyle.italic),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildConversionRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140, // Increased width slightly for longer labels
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}