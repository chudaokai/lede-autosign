#! /bin/sh

export KSROOT=/koolshare
source $KSROOT/scripts/base.sh
eval `dbus export autosign`

confs=`dbus list autosign|cut -d "=" -f1`

for conf in $confs
do
	dbus remove $conf
done

sleep 1
rm -rf $KSROOT/scripts/autosign*
rm -rf $KSROOT/webs/Module_autosign.asp
rm -rf $KSROOT/webs/res/icon-autosign.png
rm -rf $KSROOT/webs/res/icon-autosign-bg.png

dbus remove softcenter_module_autosign_home_url
dbus remove softcenter_module_autosign_install
dbus remove softcenter_module_autosign_md5
dbus remove softcenter_module_autosign_version
dbus remove softcenter_module_autosign_name
dbus remove softcenter_module_autosign_description

rm -rf $KSROOT/scripts/uninstall_autosign.sh
