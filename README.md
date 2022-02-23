INFO
====

This repository contains different files and information around the
topic of **customization**.
Contents revolve around (but are not limited to):
  * Windows, incl. WSL (Windows Subsystem for Linux)
  * Linux (Ubuntu), incl. i3wm and zsh/oh-my-zsh
  * Webbrowsers, esp. Firefox and derivatives thereof (Waterfox)

Those being familiar with the concept of 'dotfiles' may know about
some of the mentioned topics already.

As I often just find myself collecting information from different
places on the internet, I tend to (and try to) leave comments in
files, which hopefully allow me to understand what I need to do when
I come back  later, after I forgot everything about the respective
topic. This is also one of the reasons I want to share even some of
my very chaotic files, as they still might contain useful info for
someone else.

Some customizations, especially the case for css, are simply removing
or hiding things, to get a cleaner look and improve functionality.
(Obviously this is only the case if hidden or removed things are not
used and thus only take up space.)


## NOTE
This repository does *not* contain *all* files necessary to actually
use them. Files potentially containing sensitive information and/or
images might be left out. External contents are also left out,
especially if I think that I might violate some copyright by sharing
it.


Implementation and Systems
--------------------------

For the time being there are no installation/implementation
instructions. For those being absolutely unfamiliar with the included
files, use the name of each directory and an arbitrary web search
engine, in order to find documentation.
For those somewhat familiar with the different topics covered here,
lots of files contain comments that give hints or even explain what
to do, in order to adjust files for your needs or just adapt to your
system.

In some cases filenames should help identifying on which system the
specific configuration is/has been used, e.g. '_ubuntu14' at the end
of a filename is a hint, that the file is from a Ubuntu 14.04 LTS
system.

A possible option to use these files, while keeping the ability to
edit them within the repository is to create symlinks from their
expected location to the repository.
An example:
The i3wm configuration file is in the git repository
`/home/username/git/custom/i3wm/config_mysystem`, while i3wm expects
it to be at `/home/username/.config/i3/config`.
Navigate to `/home/username/.config/i3` and create a symlink
(symbolic link) to the actual file in the git repo:
`ln -s /home/username/git/custom/i3wm/config_mysystem config`.
Now, i3wm follows the symlink to the git repo.


Notes on Functionality
---------------------- 

Parts related to Windows customization tend to be on the older side,
as I was mainly trying different things on Windows 7. Thus, these
might not work on newer systems as Windows 10 or 11 anymore.
As an example, Rainmeter might have been updated by now, breaking the
functionality of the skins provided there.

I also reduced the amount of webbrowser customization. Working on
this might be fun, but I find css to be very time consuming. As  each
major update of a webbrowser or website tends to break some of the
scripts, and I do not want to spend too much time on this, I often
use css from [userstyles.org](https://userstyles.org/), and maybe
tweak those a little or simply add my own very small css to implement
small changes. Small updates might happen anytime.
The 'userChrome' is also likely to be updated every time I switch to
a new major release of Waterfox, which induces the need for changes.

I use VcXsrv in combination with WSL more as a productivity tool and
less for the fancy looks. Thus, I am happy as long as it works and go
by the 'never change a running system' attitude, in this case at
least.

The i3 window manager is something I came to love, not only in
combination with VcXsrv and WSL in a small window under Windows, but
especially in the purer form of a window manager for an actual full-
fledged Linux system (e.g Ubuntu), which I use for work.
Changes and more tests, e.g. with other status commands, can be
expected. However, if I have a nice setup that I am content with,
changes are naturally less likely.
