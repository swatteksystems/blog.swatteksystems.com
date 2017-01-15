<div id="visual-portal-wrapper">

<div id="portal-top" class="row">

<div class="cell width-full position-0">

<div id="portal-header">

[Skip to
content.](https://blog.swatteksystems.com/old/archive/2010/03/07/tether-huawei-u7519-wind-mobile-linux#content)
| [Skip to
navigation](https://blog.swatteksystems.com/old/archive/2010/03/07/tether-huawei-u7519-wind-mobile-linux#portlet-navigation-tree)

<div id="portal-personaltools-wrapper">

##### Personal tools {#personal-tools .hiddenStructure}

[Log
in](https://blog.swatteksystems.com/old/login_form){#personaltools-login}

</div>

<div id="portal-searchbox">

<div class="LSBox">

Search Site
<div class="searchSection">

only in current section

</div>

<div id="LSResult" class="LSResult" style="">

<div id="LSShadow" class="LSShadow">

</div>

</div>

</div>

<div id="portal-advanced-search" class="hiddenStructure">

[Advanced Search…](https://blog.swatteksystems.com/old/search_form)

</div>

</div>

[![](https://blog.swatteksystems.com/old/logo.png){width="426"
height="103"}](https://blog.swatteksystems.com "Home"){#portal-logo}
##### Sections {#sections .hiddenStructure}

-   <div id="portaltab-index_html">

    </div>

    [Home](https://blog.swatteksystems.com)
-   <div id="portaltab-news">

    </div>

    [News](https://blog.swatteksystems.com/old/news "Site News")

</div>

</div>

</div>

<div id="portal-columns" class="row">

<div id="portal-column-content" class="cell width-1:2 position-1:4">

<div id="viewlet-above-content">

<div id="portal-breadcrumbs">

<span id="breadcrumbs-you-are-here">You are here:</span> <span
id="breadcrumbs-home"> [Home](https://blog.swatteksystems.com) <span
class="breadcrumbSeparator"> › </span> </span> <span id="breadcrumbs-1"
dir="ltr"> [archive](https://blog.swatteksystems.com/old/archive) <span
class="breadcrumbSeparator"> › </span> </span> <span id="breadcrumbs-2"
dir="ltr"> [2010](https://blog.swatteksystems.com/old/archive/2010) <span
class="breadcrumbSeparator"> › </span> </span> <span id="breadcrumbs-3"
dir="ltr"> [March](https://blog.swatteksystems.com/old/archive/2010/03)
<span class="breadcrumbSeparator"> › </span> </span> <span
id="breadcrumbs-4" dir="ltr">
[07](https://blog.swatteksystems.com/old/archive/2010/03/07) <span
class="breadcrumbSeparator"> › </span> </span> <span id="breadcrumbs-5"
dir="ltr"> <span id="breadcrumbs-current">Tether Huawei U7519 Wind
Mobile Linux</span> </span>

</div>

</div>

<div>

Info

:   

<div id="content">

<div>

<span id="parent-fieldname-title"> Tether Huawei U7519 Wind Mobile Linux </span> {#tether-huawei-u7519-wind-mobile-linux .documentFirstHeading}
================================================================================

<div class="documentByLine">

<span> by </span>
[admin](https://blog.swatteksystems.com/old/authors/admin) — last modified
Mar 07, 2010 03:25 PM

</div>

<div class="weblog-topics">

<div class="weblog-topics-label">

Filed Under:

</div>

-   [Toronto](https://blog.swatteksystems.com/old/topics/Toronto)
-   [Mobilicity](https://blog.swatteksystems.com/old/topics/Mobilicity)
-   [windmobile](https://blog.swatteksystems.com/old/topics/windmobile)
-   [huawei
    tap](https://blog.swatteksystems.com/old/tether-huawei-u7519-wind-mobile-linux/https://blog.swatteksystems.com/old/topics/huawei%20tap)
-   [ubuntu](https://blog.swatteksystems.com/old/topics/ubuntu)
-   [howto](https://blog.swatteksystems.com/old/topics/howto)
-   [wind
    mobile](https://blog.swatteksystems.com/old/tether-huawei-u7519-wind-mobile-linux/https://blog.swatteksystems.com/old/topics/wind%20mobile)
-   [huawei](https://blog.swatteksystems.com/old/topics/huawei)
-   [linux](https://blog.swatteksystems.com/old/topics/linux)
-   [tether](https://blog.swatteksystems.com/old/topics/tether)
-   [guide](https://blog.swatteksystems.com/old/topics/guide)
-   [U7519](https://blog.swatteksystems.com/old/topics/U7519)

</div>

<div class="weblog-topic-images">

[](https://blog.swatteksystems.com/old/topics/Toronto)
[](https://blog.swatteksystems.com/old/topics/Mobilicity)
[](https://blog.swatteksystems.com/old/topics/windmobile)
[](https://blog.swatteksystems.com/old/tether-huawei-u7519-wind-mobile-linux/https://blog.swatteksystems.com/old/topics/huawei%20tap)
[](https://blog.swatteksystems.com/old/topics/ubuntu)
[](https://blog.swatteksystems.com/old/topics/howto)
[](https://blog.swatteksystems.com/old/tether-huawei-u7519-wind-mobile-linux/https://blog.swatteksystems.com/old/topics/wind%20mobile)
[](https://blog.swatteksystems.com/old/topics/huawei)
[](https://blog.swatteksystems.com/old/topics/linux)
[](https://blog.swatteksystems.com/old/topics/tether)
[](https://blog.swatteksystems.com/old/topics/guide)
[](https://blog.swatteksystems.com/old/topics/U7519)

</div>

<span id="parent-fieldname-description"> The following steps will enable
the use of your Wind Mobile/ Mobilicity Huawei U7519 as a 3G modem.
UPDATED 02/04/2011 </span>

<div>

<div id="parent-fieldname-text">

UPDATE\
-------

This can now be accomplished as follows:

 

    yum install usb_modeswitch mobile-broadband-provider-info

This should be all you need now.

 

 

Recently I bought  a Huawei U7519 phone on the Wind Mobile service. The
phone tethers using Windows but what use is that to me?  Here is how I
made it work using Linux.

As root:

 

echo "option"  &gt;&gt; /etc/modules

edit /etc/rc.local and add before exit 0: echo '12d1 101e' &gt;
/sys/bus/usb-serial/drivers/option1/new\_id 

 

Download and install the software as per the instructions at this link:
https://www.draisberghof.de/usb\_modeswitch/

 

You should be able to plugin your device and will have a /dev/ttyUSB0
(which you can confirm with ls /dev/ttyU\*

Now you can right click your NetworkManager in the panel and edit
connections &gt; mobile broadband &gt; add t-mobile internet then edit
that profile like so: mobile broadband &gt; apn = internet.windmobile.ca

also edit PPP  and deselect allow bsd ..  and deselect allow  deflate
 

You can also select connect automatically on the mobile broadband tab.

Surfs up!

</div>

</div>

<div class="visualClear">

</div>

<div class="documentActions">

</div>

</div>

</div>

</div>

<div id="viewlet-below-content">

<div id="category" class="documentByLine">

Filed under: <span>
[Toronto](https://blog.swatteksystems.com/old/search?Subject%3Alist=Toronto){.link-category}<span
class="separator">,</span> </span> <span>
[Mobilicity](https://blog.swatteksystems.com/old/search?Subject%3Alist=Mobilicity){.link-category}<span
class="separator">,</span> </span> <span>
[windmobile](https://blog.swatteksystems.com/old/search?Subject%3Alist=windmobile){.link-category}<span
class="separator">,</span> </span> <span> [huawei
tap](https://blog.swatteksystems.com/old/search?Subject%3Alist=huawei%20tap){.link-category}<span
class="separator">,</span> </span> <span>
[ubuntu](https://blog.swatteksystems.com/old/search?Subject%3Alist=ubuntu){.link-category}<span
class="separator">,</span> </span> <span>
[howto](https://blog.swatteksystems.com/old/search?Subject%3Alist=howto){.link-category}<span
class="separator">,</span> </span> <span> [wind
mobile](https://blog.swatteksystems.com/old/search?Subject%3Alist=wind%20mobile){.link-category}<span
class="separator">,</span> </span> <span>
[huawei](https://blog.swatteksystems.com/old/search?Subject%3Alist=huawei){.link-category}<span
class="separator">,</span> </span> <span>
[linux](https://blog.swatteksystems.com/old/search?Subject%3Alist=linux){.link-category}<span
class="separator">,</span> </span> <span>
[tether](https://blog.swatteksystems.com/old/search?Subject%3Alist=tether){.link-category}<span
class="separator">,</span> </span> <span>
[guide](https://blog.swatteksystems.com/old/search?Subject%3Alist=guide){.link-category}<span
class="separator">,</span> </span> <span>
[U7519](https://blog.swatteksystems.com/old/search?Subject%3Alist=U7519){.link-category}
</span>

</div>

</div>

</div>

<div id="portal-column-one" class="cell width-1:4 position-0">

<div
id="portletwrapper-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a746167636c6f7564"
class="portletWrapper kssattr-portlethash-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a746167636c6f7564">

 <span class="portletTopLeft"></span> [Tag Cloud](https://blog.swatteksystems.com/old/topics){.tile} <span class="portletTopRight"></span> 
:   [CRTC](https://blog.swatteksystems.com/old/topics/CRTC "1 entries"){.cloudItem
    .tagRank_0}
    [Canada](https://blog.swatteksystems.com/old/topics/Canada "5 entries"){.cloudItem
    .tagRank_2}
    [Comedy](https://blog.swatteksystems.com/old/topics/Comedy "1 entries"){.cloudItem
    .tagRank_0}
    [Debian](https://blog.swatteksystems.com/old/topics/Debian "1 entries"){.cloudItem
    .tagRank_0}
    [HP](https://blog.swatteksystems.com/old/topics/HP "4 entries"){.cloudItem
    .tagRank_2}
    [Liveaboard](https://blog.swatteksystems.com/old/topics/Liveaboard "1 entries"){.cloudItem
    .tagRank_0}
    [Mobilicity](https://blog.swatteksystems.com/old/topics/Mobilicity "1 entries"){.cloudItem
    .tagRank_0}
    [Music](https://blog.swatteksystems.com/old/topics/Music "1 entries"){.cloudItem
    .tagRank_0}
    [NFS](https://blog.swatteksystems.com/old/topics/NFS "2 entries"){.cloudItem
    .tagRank_0} [Ontario Linux
    Fest](https://blog.swatteksystems.com/old/topics/Ontario%20Linux%20Fest "2 entries"){.cloudItem
    .tagRank_0}
    [OpenSolaris](https://blog.swatteksystems.com/old/topics/OpenSolaris "12 entries"){.cloudItem
    .tagRank_7}
    [Oshawa](https://blog.swatteksystems.com/old/topics/Oshawa "1 entries"){.cloudItem
    .tagRank_0} [Plone
    3](https://blog.swatteksystems.com/old/topics/Plone%203 "4 entries"){.cloudItem
    .tagRank_2}
    [SXCE](https://blog.swatteksystems.com/old/topics/SXCE "1 entries"){.cloudItem
    .tagRank_0}
    [Sailing](https://blog.swatteksystems.com/old/topics/Sailing "1 entries"){.cloudItem
    .tagRank_0}
    [Solaris](https://blog.swatteksystems.com/old/topics/Solaris "7 entries"){.cloudItem
    .tagRank_4}
    [Sun](https://blog.swatteksystems.com/old/topics/Sun "10 entries"){.cloudItem
    .tagRank_6}
    [Thunderbird](https://blog.swatteksystems.com/old/topics/Thunderbird "1 entries"){.cloudItem
    .tagRank_0}
    [Toronto](https://blog.swatteksystems.com/old/topics/Toronto "8 entries"){.cloudItem
    .tagRank_5} [Trailer Park
    Boys](https://blog.swatteksystems.com/old/topics/Trailer%20Park%20Boys "1 entries"){.cloudItem
    .tagRank_0}
    [U7519](https://blog.swatteksystems.com/old/topics/U7519 "1 entries"){.cloudItem
    .tagRank_0}
    [ahci](https://blog.swatteksystems.com/old/topics/ahci "1 entries"){.cloudItem
    .tagRank_0}
    [bios](https://blog.swatteksystems.com/old/topics/bios "1 entries"){.cloudItem
    .tagRank_0}
    [bug](https://blog.swatteksystems.com/old/topics/bug "3 entries"){.cloudItem
    .tagRank_1}
    [calendar](https://blog.swatteksystems.com/old/topics/calendar "1 entries"){.cloudItem
    .tagRank_0}
    [co-operation](https://blog.swatteksystems.com/old/topics/co-operation "3 entries"){.cloudItem
    .tagRank_1}
    [community](https://blog.swatteksystems.com/old/topics/community "5 entries"){.cloudItem
    .tagRank_2}
    [design](https://blog.swatteksystems.com/old/topics/design "1 entries"){.cloudItem
    .tagRank_0} [dv7
    1245ca](https://blog.swatteksystems.com/old/topics/dv7%201245ca "4 entries"){.cloudItem
    .tagRank_2}
    [facebook](https://blog.swatteksystems.com/old/topics/facebook "1 entries"){.cloudItem
    .tagRank_0}
    [flash](https://blog.swatteksystems.com/old/topics/flash "1 entries"){.cloudItem
    .tagRank_0}
    [google](https://blog.swatteksystems.com/old/topics/google "2 entries"){.cloudItem
    .tagRank_0}
    [guest](https://blog.swatteksystems.com/old/topics/guest "1 entries"){.cloudItem
    .tagRank_0}
    [guide](https://blog.swatteksystems.com/old/topics/guide "9 entries"){.cloudItem
    .tagRank_5}
    [help](https://blog.swatteksystems.com/old/topics/help "3 entries"){.cloudItem
    .tagRank_1}
    [host](https://blog.swatteksystems.com/old/topics/host "1 entries"){.cloudItem
    .tagRank_0}
    [howto](https://blog.swatteksystems.com/old/topics/howto "11 entries"){.cloudItem
    .tagRank_7}
    [huawei](https://blog.swatteksystems.com/old/topics/huawei "1 entries"){.cloudItem
    .tagRank_0} [huawei
    tap](https://blog.swatteksystems.com/old/topics/huawei%20tap "1 entries"){.cloudItem
    .tagRank_0}
    [laptop](https://blog.swatteksystems.com/old/topics/laptop "4 entries"){.cloudItem
    .tagRank_2}
    [linux](https://blog.swatteksystems.com/old/topics/linux "7 entries"){.cloudItem
    .tagRank_4}
    [linuxfest](https://blog.swatteksystems.com/old/topics/linuxfest "1 entries"){.cloudItem
    .tagRank_0}
    [logging](https://blog.swatteksystems.com/old/topics/logging "1 entries"){.cloudItem
    .tagRank_0}
    [migration](https://blog.swatteksystems.com/old/topics/migration "1 entries"){.cloudItem
    .tagRank_0} [net
    neutrality](https://blog.swatteksystems.com/old/topics/net%20neutrality "1 entries"){.cloudItem
    .tagRank_0} [open
    source](https://blog.swatteksystems.com/old/topics/open%20source "6 entries"){.cloudItem
    .tagRank_3}
    [opensolaris](https://blog.swatteksystems.com/old/topics/opensolaris "15 entries"){.cloudItem
    .tagRank_10}
    [portlet](https://blog.swatteksystems.com/old/topics/portlet "1 entries"){.cloudItem
    .tagRank_0}
    [quills](https://blog.swatteksystems.com/old/topics/quills "1 entries"){.cloudItem
    .tagRank_0}
    [sata](https://blog.swatteksystems.com/old/topics/sata "1 entries"){.cloudItem
    .tagRank_0}
    [security](https://blog.swatteksystems.com/old/topics/security "2 entries"){.cloudItem
    .tagRank_0} [site
    outage](https://blog.swatteksystems.com/old/topics/site%20outage "1 entries"){.cloudItem
    .tagRank_0}
    [swag](https://blog.swatteksystems.com/old/topics/swag "1 entries"){.cloudItem
    .tagRank_0}
    [tabs](https://blog.swatteksystems.com/old/topics/tabs "1 entries"){.cloudItem
    .tagRank_0}
    [tether](https://blog.swatteksystems.com/old/topics/tether "1 entries"){.cloudItem
    .tagRank_0}
    [ubuntu](https://blog.swatteksystems.com/old/topics/ubuntu "2 entries"){.cloudItem
    .tagRank_0}
    [unix](https://blog.swatteksystems.com/old/topics/unix "9 entries"){.cloudItem
    .tagRank_5} [user
    group](https://blog.swatteksystems.com/old/topics/user%20group "6 entries"){.cloudItem
    .tagRank_3} [user
    interface](https://blog.swatteksystems.com/old/topics/user%20interface "1 entries"){.cloudItem
    .tagRank_0}
    [virtualbox](https://blog.swatteksystems.com/old/topics/virtualbox "1 entries"){.cloudItem
    .tagRank_0}
    [virtualhost](https://blog.swatteksystems.com/old/topics/virtualhost "2 entries"){.cloudItem
    .tagRank_0}
    [web2.0](https://blog.swatteksystems.com/old/topics/web2.0 "10 entries"){.cloudItem
    .tagRank_6}
    [webcam](https://blog.swatteksystems.com/old/topics/webcam "1 entries"){.cloudItem
    .tagRank_0} [weblog
    admin](https://blog.swatteksystems.com/old/topics/weblog%20admin "1 entries"){.cloudItem
    .tagRank_0} [wind
    mobile](https://blog.swatteksystems.com/old/topics/wind%20mobile "1 entries"){.cloudItem
    .tagRank_0}
    [windmobile](https://blog.swatteksystems.com/old/topics/windmobile "1 entries"){.cloudItem
    .tagRank_0}
:   <span class="portletBottomLeft"></span> <span
    class="portletBottomRight"></span>

</div>

<div
id="portletwrapper-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a61726368697665"
class="portletWrapper kssattr-portlethash-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a61726368697665">

 <span class="portletTopLeft"></span> <span class="tile">Weblog Archive</span> <span class="portletTopRight"></span> 

:   -   ##### 2008

        -   [<span>August</span> (**4**)](https://blog.swatteksystems.com/old/archive/2008/08)
        -   [<span>September</span> (**2**)](https://blog.swatteksystems.com/old/archive/2008/09)
        -   [<span>October</span> (**1**)](https://blog.swatteksystems.com/old/archive/2008/10)
        -   [<span>November</span> (**1**)](https://blog.swatteksystems.com/old/archive/2008/11)
        -   [<span>December</span> (**6**)](https://blog.swatteksystems.com/old/archive/2008/12)

    -   ##### 2009

        -   [<span>April</span> (**4**)](https://blog.swatteksystems.com/old/archive/2009/04)
        -   [<span>July</span> (**1**)](https://blog.swatteksystems.com/old/archive/2009/07)
        -   [<span>August</span> (**4**)](https://blog.swatteksystems.com/old/archive/2009/08)
        -   [<span>September</span> (**5**)](https://blog.swatteksystems.com/old/archive/2009/09)
        -   [<span>October</span> (**3**)](https://blog.swatteksystems.com/old/archive/2009/10)

    -   ##### 2010

        -   [<span>March</span> (**1**)](https://blog.swatteksystems.com/old/archive/2010/03)

    -   ##### 2011

        -   [<span>February</span> (**1**)](https://blog.swatteksystems.com/old/archive/2011/02)

</div>

<div
id="portletwrapper-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a7175696c6c736c696e6b73"
class="portletWrapper kssattr-portlethash-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a7175696c6c736c696e6b73">

 <span class="portletTopLeft"></span> <span class="tile">Quills</span> <span class="portletTopRight"></span> 
:   [![Atom](https://blog.swatteksystems.com/old/atom_feed.gif "Atom Enabled"){width="80"
    height="15"}](https://blog.swatteksystems.com/old/atom.xml)
:   [![RDF](https://blog.swatteksystems.com/old/rdf_feed.gif "Semantic feed"){width="80"
    height="15"}](https://blog.swatteksystems.com/old/feed.rdf)
:   [![RSS
    2.0](https://blog.swatteksystems.com/old/rss_feed.gif "RSS 2.0 feed"){width="80"
    height="15"}](https://blog.swatteksystems.com/old/rss.xml)
:   [![Powered by
    Quills](https://blog.swatteksystems.com/old/quills_powered.gif "Quills weblog system for Plone"){width="80"
    height="15"}](https://plone.org/products/quills) <span
    class="portletBottomLeft"></span> <span
    class="portletBottomRight"></span>

</div>

<div
id="portletwrapper-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d0a6f70656e69642d6c6f67696e"
class="portletWrapper kssattr-portlethash-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d0a6f70656e69642d6c6f67696e">

 <span class="portletTopLeft"></span> [OpenID Login](https://blog.swatteksystems.com/old/login_form){.tile} <span class="portletTopRight"></span> 

:   <div class="field">

    OpenID URL\

    </div>

    <div class="formControls">

    </div>

</div>

</div>

<div id="portal-column-two" class="cell width-1:4 position-3:4">

<div
id="portletwrapper-706c6f6e652e7269676874636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a726563656e74656e7472696573"
class="portletWrapper kssattr-portlethash-706c6f6e652e7269676874636f6c756d6e0a636f6e746578740a2f626c6f672e7377617474656b73797374656d732e636f6d2f77686174732d746861740a726563656e74656e7472696573">

 <span class="portletTopLeft"></span> <span class="tile">Recent Entries</span> <span class="portletTopRight"></span> 
:   [Call
    Me](https://blog.swatteksystems.com/old/archive/2011/02/15/call-me)
:   [Tether Huawei U7519 Wind Mobile
    Linux](https://blog.swatteksystems.com/old/archive/2010/03/07/tether-huawei-u7519-wind-mobile-linux)
:   [After Ontario LinuxFest
    2009](https://blog.swatteksystems.com/old/archive/2009/10/31/day-after-ontario-linux-fest-2009)
:   [SXCE to OpenSolaris Migration on
    Sparc](https://blog.swatteksystems.com/old/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc)
:   [Presenting at Ontario GNU Linux Fest
    2009](https://blog.swatteksystems.com/old/archive/2009/10/07/presenting-at-ontario-gnu-linux-fest-2009)
:   <span class="portletBottomLeft"></span> <span
    class="portletBottomRight"></span>

</div>

</div>

</div>

<div class="row">

<div class="cell width-full position-0">

<div id="doormat-container" class="columns-0">

© 2000-2011 by SwattekSystems
-----------------------------

</div>

</div>

</div>

<div id="portal-colophon">

<div class="colophonWrapper">

-   [Powered by Plone &
    Python](https://plone.org "This site was built using the Plone Open Source CMS/WCM.")

</div>

</div>

-   <div id="siteaction-sitemap">

    </div>

    [Site Map](https://blog.swatteksystems.com/old/sitemap "Site Map")
-   <div id="siteaction-accessibility">

    </div>

    [Accessibility](https://blog.swatteksystems.com/old/accessibility-info "Accessibility")
-   <div id="siteaction-contact">

    </div>

    [Contact](https://blog.swatteksystems.com/old/contact-info "Contact")

</div>
