[![Build Status](https://travis-ci.org/cassidyjames/pixels.svg?branch=master)](https://travis-ci.org/cassidyjames/pixels)

<p align="center">
  <img src="https://cdn.rawgit.com/cassidyjames/pixels/master/data/icons/128/com.github.cassidyjames.pixels.svg" alt="Icon" />
</p>
<h1 align="center">Pixels</h1>
<p align="center">
  <a href="https://appcenter.elementary.io/com.github.cassidyjames.pixels"><img src="https://appcenter.elementary.io/badge.svg?new" alt="Get it on AppCenter" /></a>
</p>

## Made for [elementary OS](https://elementary.io)

Pixels is designed and developed on and for [elementary OS](https://elementary.io). Purchasing through AppCenter directly supports the development and ensures instant updates straight from me. Get it on AppCenter for the best experience.

[![Get it on AppCenter](https://appcenter.elementary.io/badge.svg?new)](https://appcenter.elementary.io/com.github.cassidyjames.pixels)


## Developing and Building

If you want to hack on and build Pixels yourself, you'll need the following dependencies:

* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and run `ninja test` to build and run automated tests

    meson build --prefix=/usr
    cd build
    ninja test

To install, use `ninja install`, then execute with `com.github.cassidyjames.pixels`

    sudo ninja install
    com.github.cassidyjames.pixels


## Other Platforms

Palette is made for elementary OS, but may have been built and made available elsewhere by community members. These builds may have modifications or changes and **are not provided or supported by me**.


## Special Thanks

- [Daniel Foré](https://github.com/danrabbit) for his apps to use as code examples
- [PixelSnap](https://getpixelsnap.com) for the original inspiration

-----

[![Get it on AppCenter](https://appcenter.elementary.io/badge.svg?new)](https://appcenter.elementary.io/com.github.cassidyjames.pixels)

