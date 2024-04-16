import 'package:raylib/raylib.dart';

void main(List<String> args) {
  final raylib = RayLib.initWithSources(
    sources: const LibrarySources(linux: "vendor/libraylib.so", android: "vendor/libraylib.a"),
  );
  raylib.initWindow(1280, 720, "spline");
  raylib.setTargetFPS(60);

  while (!raylib.windowShouldClose()) {
    raylib.beginDrawing();
    raylib.clearBackground(Color.red);
    raylib.endDrawing();
  }
}
