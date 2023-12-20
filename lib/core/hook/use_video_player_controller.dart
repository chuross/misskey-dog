import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

(VideoPlayerController controller, bool isReady) useVideoPlayerController(String url) {
  final VideoPlayerController controller = useMemoized(() => VideoPlayerController.networkUrl(Uri.parse(url)), [url]);
  final isReady = useState(false);

  useEffect(() {
    controller.initialize().then((value) => isReady.value = true);
    return () => controller.dispose();
  }, [controller]);

  return (useListenable(controller), isReady.value);
}
