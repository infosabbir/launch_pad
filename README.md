# Launch Pad

Launch Pad is a Flutter soundboard-style app with a colorful grid of pads that play bundled audio clips when tapped.

## Features

- 28 built-in audio samples from local app assets
- Tap-to-play pad interaction with instant playback
- Visual press feedback for each pad while it is being touched
- Colorful glowing pad grid layout
- Custom app bar styling using the Orbitron font
- Works with both `.mp3` and `.wav` audio files
- Responsive Flutter UI that runs across supported Flutter platforms

## Tech Stack

- Flutter
- Dart
- `audioplayers`
- `google_fonts`
- `device_preview`

## Project Structure

- [lib/main.dart](C:/Users/mdsab/DEV/launch_pad/lib/main.dart) boots the app
- [lib/home_page.dart](C:/Users/mdsab/DEV/launch_pad/lib/home_page.dart) builds the launchpad grid
- [lib/launchpad_tile.dart](C:/Users/mdsab/DEV/launch_pad/lib/launchpad_tile.dart) handles pad UI and audio playback
- [lib/lauchpad_list.dart](C:/Users/mdsab/DEV/launch_pad/lib/lauchpad_list.dart) stores the sample list and pad colors
- [assets/](C:/Users/mdsab/DEV/launch_pad/assets) contains the bundled audio files

## Getting Started

1. Install dependencies:

```bash
flutter pub get
```

2. Run the app:

```bash
flutter run
```

## Future Ideas

- Add loop and stop controls
- Let users load their own samples
- Support multi-pad sequencing or recording
- Add volume controls and pad labels
# launch_pad
# launch_pad
