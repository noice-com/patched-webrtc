# Noice Patched WebRTC

This repo contains the patched [WebRTC](https://webrtc.org/) builds we require to fix some issues with [react-native-webrtc](https://github.com/react-native-webrtc/react-native-webrtc).

## Why?

The Chromium WebRTC library has some built-in assumptions that are not so great. For example, requesting microphone access and enabling the microphone automatically even when only being used for playback or requesting camera access by default.

Some of these issues can be fixed by in-place, such as the microphone issue by implementing your own Audio Device Manager (ADM), but that requires a huge level of effort as well as maintenance. In some cases, like this, it is best for us to apply battle-tested patches to the WebRTC source and cut manual builds.

## Builds

Builds are currently created manually, and then published manually. Ideally we can eventually automate it, but this is what it is now. Versioning follows the same versioning scheme as WebRTC/react-native webrtc:

```
<Chrome Major Version>.0.<Release Number>
```

Once published, update the platform podfile to point to the new released version:

```ruby
s.dependency	= 'NoiceWebRTC', '~> 111.0.0'
```

## Creating a build

### iOS

1. Make sure you have Python installed and usable.
2. Follow the instructions in [react-native-webrtc/Building WebRTC](https://github.com/react-native-webrtc/react-native-webrtc/blob/master/Documentation/BuildingWebRTC.md) to get the WebRTC source on your machine and ready to build.
	- Currently we are targeting revision M111, which would be WebRTC branch `5563`.
3. Apply the patches included in [patches/](./patches) using [`git apply <patch-file>`](https://git-scm.com/docs/git-apply).
4. Follow the instructions in [react-native-webrtc/Building WebRTC](https://github.com/react-native-webrtc/react-native-webrtc/blob/master/Documentation/BuildingWebRTC.md#building) to build the project.
5. Create a new release in this repo, attaching a zip of the `.xcframework`.
6. Publish to CocoaPods Trunk.
```sh
$ # Auth with trunk
$ pod trunk register you@noice.com 'Your Name' --description='Your Device'
$ # Publish
$ pod trunk push ./ios/NoiceWebRTC.podspec
```

### Android

Tbd
