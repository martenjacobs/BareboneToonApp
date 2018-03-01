# BareboneToonApp

This is an example of a very basic Toon app you can use to develop your own apps for rooted Toons. I'm planning to add some instructions here about development. I'm new to QML, so expect some remarks that may be very obvious for experienced QML-devs.

## Some mildly helpful stuff

1. When debugging, it may be very helpful to enable logging of qt-gui by replacing
`qtqt:245:respawn:/usr/bin/startqt >/dev/null 2>&1`
with
`qtqt:245:respawn:/usr/bin/startqt >/var/log/qt.log 2>&1`
in `/etc/inittab` and rebooting
>**However:** make sure you disable it again or have some other way of clearing the log. I don't know what will happen if the log gets too big. It's being written to a tmpfs, so after a reboot you should be okay, but just be careful.

2. When naming your app, make sure the primary entry point is called [AppName]App.qml (so an app that's called barebone needs to have a qml file called BareboneApp.qml)

3. If you want to install and test your app, do this:
  1. Place your app folder in `/qmf/qml/apps/`
  2. Add your app folder name to the `appsToLoad` array in `/qmf/qml/qb/base/` (somewhere around line 200)
  3. Restart qt-gui by running `kill $(pidof qt-gui)`
