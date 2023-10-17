import 'package:flutter/material.dart';
import 'package:dice_roller/dice_roller.dart';

const startAlignment = Alignment.bottomRight;
const endAlignment = Alignment.topLeft;

// method using positional argument

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});

//   final List<Color> colors; // List of colors to be as argument to the GradientContainer constructor

//    @override
//    Widget build(context) {
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors, // pass the list to the colors named argument of LinearGradient constructor function
//                begin: startAlignment,
//                end: endAlignment
//             ),
//           ),
//           child: const  Center(
//             child: StyledText(text: 'I am a Developer.'),
//           ),
//         );
//    }
// }

// method using a named argument

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors; // List of colors to be as argument to the GradientContainer constructor

//    @override
//    Widget build(context) {
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors, // pass the list to the colors named argument of LinearGradient constructor function
//                begin: startAlignment,
//                end: endAlignment
//             ),
//           ),
//           child: const  Center(
//             child: StyledText(text: 'I am a Developer.'),
//           ),
//         );
//    }
// }

// method for calling a fixed number of colors as arguments

class GradientContainer extends StatelessWidget {
    const GradientContainer(this.color1, this.color2, {super.key}); // constructor functions use the bracket notation to define the colors

    const GradientContainer.purple({super.key}) // additional constructor function which uses the dot notation to access the color values already defined
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

    final Color color1;
    final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration( 
        gradient: LinearGradient(
            colors: [
              color1,
              color2
            ], // pass the list to the colors named argument of LinearGradient constructor function
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
