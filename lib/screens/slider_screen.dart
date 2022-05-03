import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: !_sliderEnabled
                    ? null
                    : (value) => setState(() => _sliderValue = value)),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) =>
            //         setState(() => _sliderEnabled = value ?? false)),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) =>
                    setState(() => _sliderEnabled = value ?? false)),
            // Switch.adaptive(
            //     activeColor: AppTheme.primary,
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() => _sliderEnabled = value)),
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() => _sliderEnabled = value)),
            AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F07%2Firon-man-tony-stark-first-arc-reactor-hot-toys-1.jpg?q=75&w=800&cbr=1&fit=max'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ));
  }
}
