dmenu_desktop
=============

dmenu_desktop lists desktop applications installed on the system, following
a small subset of the [XDG Desktop Menu Specification][xdg-spec]. It is
intended to use this command together with a dynamic menu, such as [dmenu][].
The selected application can be run by writing its name to the standard input
of `dmenu_desktop -e`.

Installation
------------

dmenu_desktop is just a (hopefully portable) shell script, so nothing has to
be compiled. To install it on the system, run

    # make install

The default directory prefix is `/usr/local`. Set `PREFIX` to change it.

Usage
-----

The canonical invocation to select and run an application with the help of
[dmenu][] is

    dmenu_desktop | dmenu -i | dmenu_desktop -e

You can bind this command to a hotkey in your window manager, or use
a dedicated daemon like [sxhkd][].

See the manual page for more details.


[xdg-spec]: https://standards.freedesktop.org/menu-spec/menu-spec-1.1.html
[dmenu]: http://tools.suckless.org/dmenu/
[sxhkd]: https://github.com/baskerville/sxhkd
