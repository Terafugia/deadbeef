#!/bin/sh

./scripts/portable_postbuild.sh

# package for distribution
VERSION=`cat PORTABLE_VERSION | perl -ne 'chomp and print'`
BUILD=`cat PORTABLE_BUILD | perl -ne 'chomp and print'`
ARCH=`uname -m | perl -ne 'chomp and print'`

# main distro
SRCDIR=deadbeef-$VERSION
PLUGDIR=$SRCDIR/plugins
DOCDIR=$SRCDIR/doc
PIXMAPDIR=$SRCDIR/pixmaps
OUTNAME=deadbeef-static_${VERSION}-${BUILD}_${ARCH}.tar.bz2

ARCH=`uname -m | perl -ne 'chomp and print'`

rm portable_out/build/$OUTNAME

cd portable/$ARCH
tar jcvf ../../portable_out/build/$OUTNAME\
    $SRCDIR/deadbeef\
    $SRCDIR/deadbeef.png\
    $SRCDIR/.ddb_portable\
    $DOCDIR\
    $PLUGDIR/aac.so\
    $PLUGDIR/adplug.so\
    $PLUGDIR/alsa.so\
    $PLUGDIR/artwork.so\
    $PLUGDIR/cdda.so\
    $PLUGDIR/dca.so\
    $PLUGDIR/ddb_gui_GTK2.fallback.so\
    $PLUGDIR/ddb_gui_GTK2.so\
    $PLUGDIR/ddb_gui_GTK3.so\
    $PLUGDIR/ffap.so\
    $PLUGDIR/ffmpeg.so\
    $PLUGDIR/flac.so\
    $PLUGDIR/gme.so\
    $PLUGDIR/hotkeys.so\
    $PLUGDIR/lastfm.so\
    $PLUGDIR/m3u.so\
    $PLUGDIR/mms.so\
    $PLUGDIR/mpgmad.so\
    $PLUGDIR/musepack.so\
    $PLUGDIR/notify.so\
    $PLUGDIR/nullout.so\
    $PLUGDIR/oss.so\
    $PLUGDIR/shellexec.so\
    $PLUGDIR/shellexecui_gtk2.so\
    $PLUGDIR/sid.so\
    $PLUGDIR/sndfile.so\
    $PLUGDIR/supereq.so\
    $PLUGDIR/tta.so\
    $PLUGDIR/vfs_curl.so\
    $PLUGDIR/vfs_zip.so\
    $PLUGDIR/vorbis.so\
    $PLUGDIR/vtx.so\
    $PLUGDIR/wavpack.so\
    $PLUGDIR/wildmidi.so\
    $PLUGDIR/ddb_ao.so\
    $PLUGDIR/ddb_shn.so\
    $PLUGDIR/ddb_dumb.so\
    $PLUGDIR/converter.so\
    $PLUGDIR/converter_gtk2.so\
    $PLUGDIR/convpresets\
    $PLUGDIR/pulse.so\
    $PLUGDIR/dsp_libsrc.so\
    $PLUGDIR/ddb_mono2stereo.so\
    $PLUGDIR/alac.so\
    $PIXMAPDIR\
    $SRCDIR/locale
cd ../..
