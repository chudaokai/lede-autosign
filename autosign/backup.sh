#! /bin/sh

# you can do something here
# this shell scripts will run at the end of build.py scripts

tar_name="$1.tar.gz"

mkdir -p history
if [ ! -f ./history/version ];then
	touch ./history/version
fi

version_old=`cat history/version | awk '{print $1}' | sort -rn |sed -n 1p`
version_new=`cat config.json.js |grep "version"|cut -d"\"" -f 4`

if [ -f ./$tar_name ];then
	if [ "$version_old" != "$version_new" ];then
		mkdir ./history/$version_new/
		cp ./$tar_name ./history/$version_new/
		echo $version_new >> ./history/version
	fi
fi	
