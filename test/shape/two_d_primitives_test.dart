import 'package:flutter/material.dart';
import 'package:flutter_processing/flutter_processing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../test_infra.dart';

void main() {
  group("shape", () {
    group('2D primitives', () {
      testGoldens("circle(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(draw: (s) {
              s.circle(
                center: const Offset(56, 46),
                diameter: 55,
              );
            }),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_circle-example-1');
      });

      testGoldens("square(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.square(
                  Square.fromLTE(const Offset(30, 20), 55),
                  // Squre.fromCenter(Offset(30,20), 55)
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_square-example-1');
      });

      testGoldens("rect(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.rect(
                  rect: const Rect.fromLTWH(30, 20, 55, 55),
                  // Squre.fromCenter(Offset(30,20), 55)
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(tester, 'shape_2d_primitives_rect-example-1');
      });

      testGoldens("rect(): example 2", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.rect(
                    rect: const Rect.fromLTWH(30, 20, 55, 55),
                    borderRadius: BorderRadius.circular(7)
                    // Squre.fromCenter(Offset(30,20), 55)
                    );
              },
            ),
          ),
        );

        await screenMatchesGolden(tester, 'shape_2d_primitives_rect-example-2');
      });

      testGoldens("rect(): example 3", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.rect(
                  rect: const Rect.fromLTWH(30, 20, 55, 55),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(18),
                  ),
                  // Squre.fromCenter(Offset(30,20), 55)
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(tester, 'shape_2d_primitives_rect-example-3');
      });

      testGoldens("triangle(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.triangle(
                  const Offset(30, 75),
                  const Offset(58, 20),
                  const Offset(86, 75),
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_triangle-example-1');
      });

      testGoldens("quad(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.quad(
                  const Offset(38, 31),
                  const Offset(86, 20),
                  const Offset(69, 63),
                  const Offset(30, 76),
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(tester, 'shape_2d_primitives_quad-example-1');
      });

      testGoldens("line(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.line(
                  const Offset(30, 20),
                  const Offset(85, 75),
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(tester, 'shape_2d_primitives_line-example-1');
      });

      testGoldens("line(): example 2", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s
                  ..line(
                    const Offset(30, 20),
                    const Offset(85, 20),
                  )
                  ..stroke(
                    color: const Color(0xFF505050),
                  )
                  ..line(
                    const Offset(85, 20),
                    const Offset(85, 75),
                  )
                  ..stroke(
                    color: const Color(0xFFFFFFFF),
                  )
                  ..line(
                    const Offset(85, 75),
                    const Offset(30, 75),
                  );
              },
            ),
          ),
        );

        await screenMatchesGolden(tester, 'shape_2d_primitives_line-example-2');
      });

      testGoldens("point(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s
                  ..point(
                    x: 30,
                    y: 20,
                  )
                  ..point(
                    x: 85,
                    y: 20,
                  )
                  ..point(
                    x: 85,
                    y: 75,
                  )
                  ..point(
                    x: 30,
                    y: 75,
                  );
              },
            ),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_point-example-1');
      });
      testGoldens("ellipse(): example 1", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s.ellipse(
                  Ellipse.fromCenter(
                    center: const Offset(56, 46),
                    width: 55,
                    height: 55,
                  ),
                );
              },
            ),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_ellipse-example-1');
      });
      testGoldens("ellipse(): example 2", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s
                  ..fill(color: const Color.fromARGB(255, 255, 255, 255))
                  ..ellipse(
                    Ellipse.fromCenterWithRadius(
                      center: const Offset(50, 50),
                      radius1: 30,
                      radius2: 30,
                    ),
                  )
                  ..fill(color: const Color.fromARGB(255, 100, 100, 100))
                  ..ellipse(
                    Ellipse.fromCenter(
                      center: const Offset(50, 50),
                      width: 30,
                      height: 30,
                    ),
                  );
              },
            ),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_ellipse-example-2');
      });
      testGoldens("ellipse(): example 3", (tester) async {
        configureWindowForSpecTest(tester);

        await tester.pumpWidget(
          Processing(
            sketch: Sketch.simple(
              draw: (s) {
                s
                  ..fill(color: const Color.fromARGB(255, 255, 255, 255))
                  ..ellipse(
                    Ellipse.fromLTWH(
                      topLeft: const Offset(25, 25),
                      width: 50,
                      height: 50,
                    ),
                  )
                  ..fill(color: const Color.fromARGB(255, 100, 100, 100))
                  ..ellipse(
                    Ellipse.fromLTRB(
                      topLeft: const Offset(25, 25),
                      bottomRight: const Offset(50, 50),
                    ),
                  );
              },
            ),
          ),
        );

        await screenMatchesGolden(
            tester, 'shape_2d_primitives_ellipse-example-3');
      });
    });
  });
}
