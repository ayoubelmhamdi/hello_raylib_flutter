import 'package:raylib/raylib.dart';
// import 'package:raylib/src/generated_raylib.dart';

void main(List<String> args) {
  final raylib = RayLib.initWithSources(
    sources: const LibrarySources(linux: "vendor/libraylib.so", android: "vendor/libraylib.a"),
  );
  raylib.setConfigFlags({ConfigFlag.resizable});

  raylib.initWindow(1280, 720, "spline");
  raylib.setTargetFPS(60);

  while (!raylib.windowShouldClose()) {
    raylib.beginDrawing();
    raylib.clearBackground(Color.red);
    raylib.endDrawing();
  }
}
