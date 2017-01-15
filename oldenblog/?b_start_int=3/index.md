[Skip to content.](https://blog.swatteksystems.com/oldenblog/?b_start_int=3#content) | [Skip to navigation](https://blog.swatteksystems.com/oldenblog/?b_start_int=3#portlet-navigation-tree)

##### Personal tools

<a href="https://blog.swatteksystems.com/oldenblog/login_form" id="personaltools-login">Log in</a>

Search Site
only in current section

[Advanced Search…](https://blog.swatteksystems.com/oldenblog/search_form)

<a href="https://blog.swatteksystems.com/oldenblog" id="portal-logo" title="Home"><img src="https://blog.swatteksystems.com/oldenblog/logo.png" width="426" height="103" /></a>
##### Sections

-   

    [Home](https://blog.swatteksystems.com/oldenblog)
-   

    [News](https://blog.swatteksystems.com/oldenblog/news "Site News")

<span id="breadcrumbs-you-are-here">You are here:</span> <span id="breadcrumbs-home"> [Home](https://blog.swatteksystems.com/oldenblog) </span>

Info  

Whats That?
===========

Blog

<span class="previous"> [« Previous 3 items](https://blog.swatteksystems.com/oldenblog/?b_start_int=0) </span> <span class="next"> [Next 3 items »](https://blog.swatteksystems.com/oldenblog/?b_start_int=6) </span> [1](https://blog.swatteksystems.com/oldenblog/?b_start_int=0) <span class="current">2</span> [3](https://blog.swatteksystems.com/oldenblog/?b_start_int=6) [4](https://blog.swatteksystems.com/oldenblog/?b_start_int=9) [5](https://blog.swatteksystems.com/oldenblog/?b_start_int=12) <span> … [11](https://blog.swatteksystems.com/oldenblog/?b_start_int=30) </span>

Oct 19, 2009
------------

[SXCE to OpenSolaris Migration on Sparc](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc)
--------------------------------------------------------------------------------------------------------------------------------------------------------

[](https://blog.swatteksystems.com/oldenblog/whats-that/topics/SXCE) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Solaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Sun) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/howto) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/migration) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/guide)

<span> by </span> [http://swattek.pip.verisignlabs.com/](https://blog.swatteksystems.com/oldenblog/whats-that/authors/http//swattek.pip.verisignlabs.com/) — last modified Oct 20, 2009 11:25 PM

Filed Under:

-   [SXCE](https://blog.swatteksystems.com/oldenblog/whats-that/topics/SXCE)
-   [Solaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Solaris)
-   [Sun](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Sun)
-   [howto](https://blog.swatteksystems.com/oldenblog/whats-that/topics/howto)
-   [OpenSolaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris)
-   [opensolaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris)
-   [migration](https://blog.swatteksystems.com/oldenblog/whats-that/topics/migration)
-   [guide](https://blog.swatteksystems.com/oldenblog/whats-that/topics/guide)

Using some already existing blogs/mail-lists and elbow grease, I've migrated a SPARC server to OpenSolaris from SXCE.

With SXCE EOL coming up fast and the AI not quite up to speed (for this instance at any rate), I've cobbled together and carried out a migration of a Sun e220r sparc box from SXCE.

I used quite abit from <a href="http://blogs.sun.com/edp" class="external-link">Edward Pilatowicz's blog</a> and also <a href="http://alexeremin.blogspot.com/2009/07/minimal-opensolaris-sparc-install.html" class="external-link">Alex Eremin's blog</a> . I altered/diverged to suit my needs as well due to things changing rapidly in OpenSolaris.

I built IPS from the gate, more details on IPS and the mercurial url here:<a href="http://opensolaris.org/os/project/pkg/" class="uri" class="external-link">http://opensolaris.org/os/project/pkg/</a> . With that installed proceeded to create an new root pool on a separate disk.

I utilized the following from Edward's blog, where I've diverged/changed I have commented out the original and noted beside my change:

    # we're going to do our install in /a
    PKG_IMAGE=/a; export PKG_IMAGE

    # mount our zpool on /a
    mkdir -p $PKG_IMAGE
    mount -F zfs rpool/ROOT/opensolaris $PKG_IMAGE
    mkdir -p $PKG_IMAGE/opt
    mount -F zfs rpool/ROOT/opensolaris/opt $PKG_IMAGE/opt

    # create the basic opensolaris install image.
    #pkg image-create -F -a opensolaris.org=http://pkg.opensolaris.org $PKG_IMAGE
    pkg image-create -f -F -a opensolaris.org=http://pkg.opensolaris.org/dev $PKG_IMAGE # Sparc requires the dev repos
    #pkg refresh
    pkg -R $PKG_IMAGE refresh --full # We're not clobbering our original or changing it so the next few are mine too
    pkg -R $PKG_IMAGE install entire
    pkg -R $PKG_IMAGE install SUNWcsd SUNWcs
    pkg -R $PKG_IMAGE install babel_install

    # seed the initial smf repository
    cp $PKG_IMAGE/lib/svc/seed/global.db $PKG_IMAGE/etc/svc/repository.db
    chmod 0600 $PKG_IMAGE/etc/svc/repository.db
    chown root:sys $PKG_IMAGE/etc/svc/repository.db

    # setup smf profiles
    ln -s ns_files.xml $PKG_IMAGE/var/svc/profile/name_service.xml
    ln -s generic_limited_net.xml $PKG_IMAGE/var/svc/profile/generic.xml
    ln -s inetd_generic.xml $PKG_IMAGE/var/svc/profile/inetd_services.xml
    ln -s platform_none.xml $PKG_IMAGE/var/svc/profile/platform.xml

 

After that I finished with:

echo "rpool/ROOT/opensolaris  -  /  zfs  -  no  -" &gt;&gt; $PKG\_IMAGE/etc/vfstab

echo "rpool/ROOT/opensolaris/opt  -  /opt  zfs  -  yes  -" &gt;&gt; $PKG\_IMAGE/etc/vfstab

    devfsadm -r $PKG_IMAGE

    bootadm update-archive -R $PKG_IMAGE

    installboot -F zfs /platform/$(uname -i)/lib/fs/zfs/bootblk /dev/rdsk/c0t0d0s0

 

 Copying relevant networking, passwd, ssh keys, etc. files from the running SXCE system to $PKG\_IMAGE, I successfully booted to my OpenSolaris install and tweaked from there.

Oct 06, 2009
------------

[Presenting at Ontario GNU Linux Fest 2009](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/10/07/presenting-at-ontario-gnu-linux-fest-2009)
--------------------------------------------------------------------------------------------------------------------------------------------------------------

[](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Canada) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Toronto) [](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/open%20source) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/Ontario%20Linux%20Fest) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/community) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/linux)

<span> by </span> [http://swattek.pip.verisignlabs.com/](https://blog.swatteksystems.com/oldenblog/whats-that/authors/http//swattek.pip.verisignlabs.com/) — last modified Oct 07, 2009 03:05 PM

Filed Under:

-   [Canada](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Canada)
-   [Toronto](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Toronto)
-   [open source](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/open%20source)
-   [opensolaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris)
-   [Ontario Linux Fest](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/Ontario%20Linux%20Fest)
-   [community](https://blog.swatteksystems.com/oldenblog/whats-that/topics/community)
-   [OpenSolaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris)
-   [linux](https://blog.swatteksystems.com/oldenblog/whats-that/topics/linux)

I'll be filling in for Brian Leonard and speaking at this year's event (as Brian has another engagement), on October 24, 2009.

We just firmed up the plans and I will be speaking in <a href="http://blogs.sun.com/observatory/" class="external-link">Brian's stead</a> , as Brian is already presenting at the Florida Linux Show on the same date:
[http://www.floridalinuxshow.com/index.php?pr=Brian\_Leonard 
](http://www.floridalinuxshow.com/index.php?pr=Brian_Leonard)

This is at the kick-off event of <a href="http://onlinux.ca/node/107" class="external-link">Open Source Week in Toronto</a> . I'm looking forward to the event and the opportunity to speak on OpenSolaris!

Here's my speaker link: <a href="http://onlinux.ca/node/123" class="uri" class="external-link">http://onlinux.ca/node/123</a>

Everyone that can make it to the 'Fest should, very cool stuff.

Sep 29, 2009
------------

[Toronto Opensolaris @ Linux Fest](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/09/30/toronto-opensolaris-linux-fest)
------------------------------------------------------------------------------------------------------------------------------------------

[](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Canada) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Toronto) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Solaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Sun) [](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/user%20group) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/community) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris) [](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/open%20source)

<span> by </span> [http://swattek.pip.verisignlabs.com/](https://blog.swatteksystems.com/oldenblog/whats-that/authors/http//swattek.pip.verisignlabs.com/) — last modified Sep 30, 2009 07:56 PM

Filed Under:

-   [Canada](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Canada)
-   [Toronto](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Toronto)
-   [Solaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Solaris)
-   [Sun](https://blog.swatteksystems.com/oldenblog/whats-that/topics/Sun)
-   [user group](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/user%20group)
-   [community](https://blog.swatteksystems.com/oldenblog/whats-that/topics/community)
-   [OpenSolaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris)
-   [opensolaris](https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris)
-   [open source](https://blog.swatteksystems.com/oldenblog/whats-that/https://blog.swatteksystems.com/oldenblog/whats-that/topics/open%20source)

Plan to be there!

Hi all,
A heads up: Saturday, 24 October 2009 (plus additional fun stuff on the Friday night previous and Sunday following)
Check out: [http://onlinux.ca](http://onlinux.ca/) ; check here: <http://onlinux.ca/venue> for the directions ; and here for about: <http://onlinux.ca/about>
Anyone that plans (or can) to attend this is a very cool event and we, &lt;TOROSUG&gt; will be there. I'd like anyone that has the cycles and can pitch in with us to rsvp me.
Looking forward to this!
--
Cheers,
Steven
-----------------------
Steven Acres
Toronto OpenSolaris User Group &lt;TOROSUG&gt;
Leader
<http://opensolaris.org/os/project/torosug>

<span class="previous"> [« Previous 3 items](https://blog.swatteksystems.com/oldenblog/?b_start_int=0) </span> <span class="next"> [Next 3 items »](https://blog.swatteksystems.com/oldenblog/?b_start_int=6) </span> [1](https://blog.swatteksystems.com/oldenblog/?b_start_int=0) <span class="current">2</span> [3](https://blog.swatteksystems.com/oldenblog/?b_start_int=6) [4](https://blog.swatteksystems.com/oldenblog/?b_start_int=9) [5](https://blog.swatteksystems.com/oldenblog/?b_start_int=12) <span> … [11](https://blog.swatteksystems.com/oldenblog/?b_start_int=30) </span>

Filed under: <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=Canada" class="link-category">Canada</a><span class="separator">,</span> </span> <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=quills" class="link-category">quills</a><span class="separator">,</span> </span> <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=Plone%203" class="link-category">Plone 3</a><span class="separator">,</span> </span> <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=blog" class="link-category">blog</a><span class="separator">,</span> </span> <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=unix" class="link-category">unix</a><span class="separator">,</span> </span> <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=linux" class="link-category">linux</a><span class="separator">,</span> </span> <span> <a href="https://blog.swatteksystems.com/oldenblog/search?Subject%3Alist=Debian" class="link-category">Debian</a> </span>

 <span class="portletTopLeft"></span> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics" class="tile">Tag Cloud</a> <span class="portletTopRight"></span>   
<a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/CRTC" class="cloudItem tagRank_0" title="1 entries">CRTC</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Canada" class="cloudItem tagRank_2" title="5 entries">Canada</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Comedy" class="cloudItem tagRank_0" title="1 entries">Comedy</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Debian" class="cloudItem tagRank_0" title="1 entries">Debian</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/HP" class="cloudItem tagRank_2" title="4 entries">HP</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Liveaboard" class="cloudItem tagRank_0" title="1 entries">Liveaboard</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Mobilicity" class="cloudItem tagRank_0" title="1 entries">Mobilicity</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Music" class="cloudItem tagRank_0" title="1 entries">Music</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/NFS" class="cloudItem tagRank_0" title="2 entries">NFS</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Ontario%20Linux%20Fest" class="cloudItem tagRank_0" title="2 entries">Ontario Linux Fest</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/OpenSolaris" class="cloudItem tagRank_7" title="12 entries">OpenSolaris</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Oshawa" class="cloudItem tagRank_0" title="1 entries">Oshawa</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Plone%203" class="cloudItem tagRank_2" title="4 entries">Plone 3</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/SXCE" class="cloudItem tagRank_0" title="1 entries">SXCE</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Sailing" class="cloudItem tagRank_0" title="1 entries">Sailing</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Solaris" class="cloudItem tagRank_4" title="7 entries">Solaris</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Sun" class="cloudItem tagRank_6" title="10 entries">Sun</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Thunderbird" class="cloudItem tagRank_0" title="1 entries">Thunderbird</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Toronto" class="cloudItem tagRank_5" title="8 entries">Toronto</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/Trailer%20Park%20Boys" class="cloudItem tagRank_0" title="1 entries">Trailer Park Boys</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/U7519" class="cloudItem tagRank_0" title="1 entries">U7519</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/ahci" class="cloudItem tagRank_0" title="1 entries">ahci</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/bios" class="cloudItem tagRank_0" title="1 entries">bios</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/bug" class="cloudItem tagRank_1" title="3 entries">bug</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/calendar" class="cloudItem tagRank_0" title="1 entries">calendar</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/co-operation" class="cloudItem tagRank_1" title="3 entries">co-operation</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/community" class="cloudItem tagRank_2" title="5 entries">community</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/design" class="cloudItem tagRank_0" title="1 entries">design</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/dv7%201245ca" class="cloudItem tagRank_2" title="4 entries">dv7 1245ca</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/facebook" class="cloudItem tagRank_0" title="1 entries">facebook</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/flash" class="cloudItem tagRank_0" title="1 entries">flash</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/google" class="cloudItem tagRank_0" title="2 entries">google</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/guest" class="cloudItem tagRank_0" title="1 entries">guest</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/guide" class="cloudItem tagRank_5" title="9 entries">guide</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/help" class="cloudItem tagRank_1" title="3 entries">help</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/host" class="cloudItem tagRank_0" title="1 entries">host</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/howto" class="cloudItem tagRank_7" title="11 entries">howto</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/huawei" class="cloudItem tagRank_0" title="1 entries">huawei</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/huawei%20tap" class="cloudItem tagRank_0" title="1 entries">huawei tap</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/laptop" class="cloudItem tagRank_2" title="4 entries">laptop</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/linux" class="cloudItem tagRank_4" title="7 entries">linux</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/linuxfest" class="cloudItem tagRank_0" title="1 entries">linuxfest</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/logging" class="cloudItem tagRank_0" title="1 entries">logging</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/migration" class="cloudItem tagRank_0" title="1 entries">migration</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/net%20neutrality" class="cloudItem tagRank_0" title="1 entries">net neutrality</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/open%20source" class="cloudItem tagRank_3" title="6 entries">open source</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/opensolaris" class="cloudItem tagRank_10" title="15 entries">opensolaris</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/portlet" class="cloudItem tagRank_0" title="1 entries">portlet</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/quills" class="cloudItem tagRank_0" title="1 entries">quills</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/sata" class="cloudItem tagRank_0" title="1 entries">sata</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/security" class="cloudItem tagRank_0" title="2 entries">security</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/site%20outage" class="cloudItem tagRank_0" title="1 entries">site outage</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/swag" class="cloudItem tagRank_0" title="1 entries">swag</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/tabs" class="cloudItem tagRank_0" title="1 entries">tabs</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/tether" class="cloudItem tagRank_0" title="1 entries">tether</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/ubuntu" class="cloudItem tagRank_0" title="2 entries">ubuntu</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/unix" class="cloudItem tagRank_5" title="9 entries">unix</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/user%20group" class="cloudItem tagRank_3" title="6 entries">user group</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/user%20interface" class="cloudItem tagRank_0" title="1 entries">user interface</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/virtualbox" class="cloudItem tagRank_0" title="1 entries">virtualbox</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/virtualhost" class="cloudItem tagRank_0" title="2 entries">virtualhost</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/web2.0" class="cloudItem tagRank_6" title="10 entries">web2.0</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/webcam" class="cloudItem tagRank_0" title="1 entries">webcam</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/weblog%20admin" class="cloudItem tagRank_0" title="1 entries">weblog admin</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/wind%20mobile" class="cloudItem tagRank_0" title="1 entries">wind mobile</a> <a href="https://blog.swatteksystems.com/oldenblog/whats-that/topics/windmobile" class="cloudItem tagRank_0" title="1 entries">windmobile</a>

<span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>

 <span class="portletTopLeft"></span> <span class="tile">Weblog Archive</span> <span class="portletTopRight"></span>   
-   ##### 2008

    -   [<span>August</span> (**4**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2008/08)
    -   [<span>September</span> (**2**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2008/09)
    -   [<span>October</span> (**1**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2008/10)
    -   [<span>November</span> (**1**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2008/11)
    -   [<span>December</span> (**6**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2008/12)

-   ##### 2009

    -   [<span>April</span> (**4**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/04)
    -   [<span>July</span> (**1**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/07)
    -   [<span>August</span> (**4**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/08)
    -   [<span>September</span> (**5**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/09)
    -   [<span>October</span> (**3**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/10)

-   ##### 2010

    -   [<span>March</span> (**1**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2010/03)

-   ##### 2011

    -   [<span>February</span> (**1**)](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2011/02)

 <span class="portletTopLeft"></span> <span class="tile">Quills</span> <span class="portletTopRight"></span>   
[<img src="https://blog.swatteksystems.com/oldenblog/atom_feed.gif" title="Atom Enabled" alt="Atom" width="80" height="15" />](https://blog.swatteksystems.com/oldenblog/whats-that/atom.xml)

[<img src="https://blog.swatteksystems.com/oldenblog/rdf_feed.gif" title="Semantic feed" alt="RDF" width="80" height="15" />](https://blog.swatteksystems.com/oldenblog/whats-that/feed.rdf)

[<img src="https://blog.swatteksystems.com/oldenblog/rss_feed.gif" title="RSS 2.0 feed" alt="RSS 2.0" width="80" height="15" />](https://blog.swatteksystems.com/oldenblog/whats-that/rss.xml)

[<img src="https://blog.swatteksystems.com/oldenblog/quills_powered.gif" title="Quills weblog system for Plone" alt="Powered by Quills" width="80" height="15" />](http://plone.org/products/quills) <span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>

 <span class="portletTopLeft"></span> <a href="https://blog.swatteksystems.com/oldenblog/login_form" class="tile">OpenID Login</a> <span class="portletTopRight"></span>   
OpenID URL

 <span class="portletTopLeft"></span> <span class="tile">Recent Entries</span> <span class="portletTopRight"></span>   
[Call Me](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2011/02/15/call-me)

[Tether Huawei U7519 Wind Mobile Linux](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2010/03/07/tether-huawei-u7519-wind-mobile-linux)

[After Ontario LinuxFest 2009](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/10/31/day-after-ontario-linux-fest-2009)

[SXCE to OpenSolaris Migration on Sparc](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc)

[Presenting at Ontario GNU Linux Fest 2009](https://blog.swatteksystems.com/oldenblog/whats-that/archive/2009/10/07/presenting-at-ontario-gnu-linux-fest-2009)

<span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>

© 2000-2011 by SwattekSystems
-----------------------------

-   [Powered by Plone & Python](http://plone.org "This site was built using the Plone Open Source CMS/WCM.")

-   

    [Site Map](https://blog.swatteksystems.com/oldenblog/sitemap "Site Map")
-   

    [Accessibility](https://blog.swatteksystems.com/oldenblog/accessibility-info "Accessibility")
-   

    [Contact](https://blog.swatteksystems.com/oldenblog/contact-info "Contact")


