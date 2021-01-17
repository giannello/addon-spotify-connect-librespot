# Home Assistant Community Add-on: Spotify Connect (librespot)

The Home Assistant Spotify Connect (librespot) add-on allows you to use your
device, running Home Assistant, to play your Spotify music. This add-on uses
the Spotify Connect protocol, which makes it a device that can be controlled
by all the official clients.

For example; Running Home Assistant on a Raspberry Pi with this add-on
installed will allow you to play your Spotify music on the Pi. So all you'll
have to do is hook up your sound system to the Pi and start booming!

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Search for the "Spotify Connect (librespot)" add-on in the Supervisor add-on store
   and install it.
1. Select your audio output device and hit `Save` on that as well.
1. Start the "Spotify Connect (librespot)" add-on.
1. Check the logs of the "Spotify Connect (librespot)" to see if everything went well.
1. Ready to go!

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
name: Home Assistant
bitrate: 320
create_entity: True
initial_volume: 50
volume_control: linear
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `name`

The name of your device (the Spotify Connect target), as shown on
the official Spotify clients.

**Note**: _May only contain letters, numbers, hyphens (`-`), dots (`.`) and spaces._

### Option: `bitrate`

The bitrate Spotify should use. The higher, the better the sound quality,
however, the add-on consumes more data.

Valid values: `96`, `160` (default) or `320`.

### Option: `create_entity`

Create an entity that exposes the status of `librespot` to Home Assistant.

### Option: `device_type`

The device type announced by `librespot`. The icon shown in Spotify will
change based on this value.

Valid values: `computer`, `tablet`, `smartphone`, `speaker`, `tv`, `avr`, `stb`, `audiodongle`, `unknown`.

### Option: `disable_gapless`

Disable gapless playback.

### Option: `initial_volume`

Initial volume, set when the Spotify client connects to this instance.

Valid values: any integer from 0 to 100

### Option: `normalize_volume`

Enable volume normalization.

### Option: `username`

**IMPORTANT**: _This requires a Spotify Premium account!_

The username you use to login to your Spotify Premium account. Setting
this will bind the add-on to your account exclusively.

This can be helpful when experiencing discovery issues on your network or
to disallow guests on your network to use the add-on.

### Option: `password`

The password you use to login to your Spotify Premium account.

### Option: `proxy`

Use the specified proxy to connect to the internet.

### Option: `volume_control`

Use the following algorhythm for volume control.

Valid values: `linear`, `log`, `fixed`

## Known issues and limitations

- This add-on does support ARM-based devices, nevertheless, they must
  at least be an ARMv7 device. (Raspberry Pi 1 and Zero is not supported).
- This add-on requires a Spotify Premium account.

## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality. The format of the log is based on
[Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of ``MAJOR.MINOR.PATCH``. In a nutshell, the version will be incremented
based on the following:

- ``MAJOR``: Incompatible or major changes.
- ``MINOR``: Backwards-compatible new features and enhancements.
- ``PATCH``: Backwards-compatible bugfixes and package updates.

## Support

Got questions?

You have several options to get them answered:

- The [Home Assistant Community Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- The [Home Assistant Discord chat server][discord-ha] for general Home
  Assistant discussions and questions.
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

## Authors & contributors

The original setup of this repository is by [Franck Nijhof][frenck].
Additional contributions by [Giuseppe Iannello][giannello].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## License

MIT License

Copyright (c) 2018-2020 Franck Nijhof, Giuseppe Iannello

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[contributors]: https://github.com/giannello/addon-spotify-connect-librespot/graphs/contributors
[discord-ha]: https://discord.gg/c5DvZ4e
[discord]: https://discord.me/hassioaddons
[forum]: https://community.home-assistant.io/t/home-assistant-community-add-on-spotify-connect/61210?u=giannello
[frenck]: https://github.com/frenck
[giannello]: https://github.com/giannello
[issue]: https://github.com/giannello/addon-spotify-connect-librespot/issues
[keepchangelog]: http://keepachangelog.com/en/1.0.0/
[reddit]: https://reddit.com/r/homeassistant
[releases]: https://github.com/giannello/addon-spotify-connect-librespot/releases
[semver]: http://semver.org/spec/v2.0.0.htm
