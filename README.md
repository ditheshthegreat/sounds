# Sounds

Sounds is a fork of the Flutter Sound project.

Sounds is almost a complete rewrite of the dart code from Flutter Sound.
The aim of the rewrite has been resolve a number of issues apparent in Flutter Sound:
* jank during playback.
* crashes due to threading issues.
* redesign the api so it is clean and consistent.
* design an api that will accomodate future expansion of the core feature set.
* provide additional features.
* Hide internal apis from the public api.
* Provide a consistent error handling mechanisim via exceptions.
* Remove duplicated code.
* Bring the code in line with Google's recommended best practices.

<img src="https://raw.githubusercontent.com/bsutton/sounds/master/SoundsLogo.png" width="70%" height="70%" />

<p align="left">
  <a href="https://pub.dartlang.org/packages/sounds"><img alt="pub version" src="https://img.shields.io/pub/v/sounds.svg?style=flat-square"></a>
</p>

# Overview
The Sounds package is a Flutter package that provides audio recording and playback functionality for both the `android` and `ios` platforms.

Sounds provides both a high level api and widgets for recording and playback.

The api is designed so you can use the supplied widgets or roll your own.

The Sounds package supports playback from:
* Assets
* Files
* URL
* Native Streams (with sync).

# Features
The Sounds package includes the following features
* Play audio without any UI
* Play audio using the built in SoundPlayerUI Widget.
* Play audio using the OSs' Media Player
* Roll your own UI utilising the Sounds api.
* Record audio without any UI
* Record audio using the builtin SoundRecorderUI Widget.
* Roll your own Recording UI utilising the Sounds api.
* Support for releasing/resuming resources when the app pauses/resumes.

The core classes are:

| Class | Usage |
| --- | --- |
[SoundPlayerUI](https://github.com/bsutton/sounds/wiki/SoundPlayerUI) | A Flutter Widget Audio Player 
[SoundRecorderUI](https://github.com/bsutton/sounds/wiki/SoundRecorderUI) | A Flutter Widget for recording
[QuickPlay](https://github.com/bsutton/sounds/wiki/QuickPlay) | Plays an audio file without a UI.
[SoudPlayer.noUI](https://github.com/bsutton/sounds/wiki/SoundPlayer) |  API to playback audio with fine grained control
[SoundPlayer.withShadeUI](https://github.com/bsutton/sounds/wiki/SoundPlayer) | API to playback audio using the OS's Shade (media player)
[SoundRecorder](https://github.com/bsutton/sounds/wiki/SoundRecorder) | API to record audio with fine grained control.
[Track](https://github.com/bsutton/sounds/wiki/Track) | Container for audio used by all of the above classes.
[MediaFormat](https://github.com/bsutton/sounds/wiki/MediaFormat) | Defines what MediaFormat is being used.
[RecorderPlaybackController](https://github.com/bsutton/sounds/wiki/RecorderPlaybackController) | Flutter InheritedWidget used to co-ordinate Recording and Playback in a single UI.
[Albums](https://github.com/bsutton/sounds/wiki/Albums) | Play a sequence of Tracks via the OS's Shade (media player)



## Help

Audio is a fundemental building block needed by almost every flutter project.

I'm looking to make Sounds the go to project for Flutter Audio with support for each of the Flutter supported platforms.

Sounds is a large and complex project which requires me to maintain multiple hardware platforms and test environments.

### Sponsorship
If you can't help out by directly contributing code maybe you could Sponsor me to offset some of the costs of maintaining Sounds.

If I can get enough sponsorship I intend hiring a grad to do a chunk of the dirty work so I can focus on some of the larger features such as Web Support.

You can find the purple heart Sponser button at the top of the page.



# Documentation

[Install](https://github.com/bsutton/sounds/wiki/Install) 

[Wiki](https://github.com/bsutton/sounds/wiki/Home) High level guide to using Sounds.

[API Reference](https://pub.dev/documentation/sounds/latest/)

## Roadmap 
See the [Roadmap](https://github.com/bsutton/sounds/wiki/RoadMap)  for details on the future of Sounds.

## Contributing
See the [Contributing](https://github.com/bsutton/sounds/wiki/Contributing) guide for details on contributing to Sounds.



The key classes are:

## Api classes

QuickPlay - instantly play an audio file (no ui). Perfect for the odd beep.

Track - Defines a track including the artist details and the audio media.

Album - play a collection of tracks via the OSs' audio UI.

SoundPlayer - provides an api for playing audio including pause/resume/seek.

SoundRecorder - api for recording audio.

## Widgets

SoundPlayerUI - displays an HTML 5 style audio controller widget.

SoundRecorderUI - displays a recording widget.

RecorderPlaybackController - pairs a SoundPlayerUI and SoundRecorderUI to provide a co-ordinated recording/playback UI.

Note: there are some limitations on the supported MediaFormat. See the [MediaFormat] section below.

![Demo](https://raw.githubusercontent.com/bsutton/sounds/master/example.png)

