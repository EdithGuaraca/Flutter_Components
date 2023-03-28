import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider && Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              //Slider.adaptive me sirve para que se vea bn en android/IOS
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;

                      print(value);
                      setState(() {});
                    }
                  : null,
            ),

            //checkBox

            Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: Text('habilitar slider'),
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value ?? true;
                });
              },
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgoWENtFtGxnFyrQfLyP_HFDAkN6TUSgbmaLfDWbV6OhmwmdbpY6YKkeIJ_p_2F2w_jBX_vdyMcAmNKAHmyfPQc7eMYJ9_sPgnQHZKUs0qrwm6_XR35KPwyetNM4Sxsx4PZ120l601QEoYXCTheFX_TT1Ow35NPiW3Ab2IvGk-sEXDdCGwWuwdTzq0I/s1024/batman_ia.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
