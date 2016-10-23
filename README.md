# Gentoo/Funtoo SyncThing Overlay
I have several systems at home running Funtoo. Most of them are based on funtoo-current and upgraded regularly. One of them is a server and have KDE4 installed that is removed from the official portage and at the writing odf this quite problematic to update due to clash with KDE 5 packages. 

In other words; I have several systems with different strategies for upgrading and how often they are upgraded. This poses a problem for SyncThbing. 

If the versions of SyncThing used between computers are differing a lot there will eventually be problems. Version 0.13 is do complain if connected to a version 0.14. We must keep SyncThing updated so that the same version is used throughout the network. And here is the paradox. 

The solution is to have a separate overlay with SyncThing that can be updated on all computers at the same time without needing to sync other parts of portage. Therefore I created this overlay. 

# Usage instuctions
## Dependencies

This is an overlay developed and tested on Funtoo Linux. It should probably work very well in Gentoo and Sabayon Linux as well, however I have no means to verify that. 
Overlays in general depends on layman and the assumption here relies on layman being installed. 


## Installation
A non officcial overlay (as this is) is not directly fetchable with layman. You have to manually register the overlay. 

Start by copying  `synthing-overlay.xml` into `/etc/layman/overlays`

Run `layman-updater -R` to re-read the overlay-directory
You will now also have to run `layman -L` to list all overlays or layman will not find syncthing-overlay. 
Finally add the overlay to portage: `layman -a syncthing-overlay`
As a security measure layman will ask for confirmation before this overlay is added. 

You can now instgall included applications as usual using emerge. To stress that you want to use the overlay version and not allow for a later portage version being installed, emerge package using ::syncthing-overlay. Example: `emerge -vatD syncthing::syncthing-overlay`

# Bug, comments and requests
Please post a ticket on bitbucket.