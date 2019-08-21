#! /bin/sh

export KSROOT=/koolshare
source $KSROOT/scripts/base.sh
eval `dbus export autosign_`

cp -rf /tmp/bbr/scripts/* $KSROOT/scripts/
cp -rf /tmp/bbr/webs/* $KSROOT/webs/
cp /tmp/bbr/uninstall.sh $KSROOT/scripts/uninstall_autosign.sh

chmod +x $KSROOT/scripts/autosign_*

dbus set softcenter_module_autosign_description=自动签到
dbus set softcenter_module_autosign_install=1
dbus set softcenter_module_autosign_name=autosign
dbus set softcenter_module_autosign_title="Auto Sign"
dbus set softcenter_module_autosign_version=0.1

sleep 1
rm -rf /tmp/autosign* >/dev/null 2>&1
