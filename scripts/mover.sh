#!/system/bin/sh
# HEBF
#=======================================================================#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
#=======================================================================#

#Create folders, moves the files to the correct folders, sets the permissions, makes the 1st BackUp

mount -o rw,remount /system

#1st Backup
cp -p /system/build.prop /data/data/com.androidvip.hebf/BackUps
cp -Rp /system/etc/init.d /data/data/com.androidvip.hebf/BackUps/init

IN0=/data/data/com.androidvip.hebf/no_adblock
OUT0=/data/data/com.androidvip.hebf/arquivos/no_adblock
dd if="$IN0" of="$OUT0"
rm -rf "$IN0"

IN1=/data/data/com.androidvip.hebf/adblock
OUT1=/data/data/com.androidvip.hebf/arquivos/adblock
dd if="$IN1" of="$OUT1"
rm -rf "$IN1"

IN2=/data/data/com.androidvip.hebf/adblock_on.sh
OUT2=/data/data/com.androidvip.hebf/arquivos/adblock_on.sh
dd if="$IN2" of="$OUT2"
rm -rf "$IN2"

IN3=/data/data/com.androidvip.hebf/adblock_off.sh
OUT3=/data/data/com.androidvip.hebf/arquivos/adblock_off.sh
dd if="$IN3" of="$OUT3"
rm -rf "$IN3"

IN4=/data/data/com.androidvip.hebf/cleaner
OUT4=/data/data/com.androidvip.hebf/limpador/cleaner
dd if="$IN4" of="$OUT4"
rm -rf "$IN4"

IN5=/data/data/com.androidvip.hebf/cleaner_etc
OUT5=/data/data/com.androidvip.hebf/limpador/cleaner_etc
dd if="$IN5" of="$OUT5"
rm -rf "$IN5"

IN6=/data/data/com.androidvip.hebf/fstrim
OUT6=/system/bin/fstrim
dd if="$IN6" of="$OUT6"
rm -rf "$IN6"
chmod 766 /system/xbin/zipalign

IN7=/data/data/com.androidvip.hebf/zipalign
OUT7=/system/xbin/zipalign
dd if="$IN7" of="$OUT7"
rm -rf "$IN7"
chmod 755 /system/xbin/zipalign

IN8=/data/data/com.androidvip.hebf/wpp_media.sh
OUT8=/data/data/com.androidvip.hebf/limpador/wpp_media.sh
dd if="$IN8" of="$OUT8"
rm -rf "$IN8"

IN9=/data/data/com.androidvip.hebf/wpp_audio.sh
OUT9=/data/data/com.androidvip.hebf/limpador/wpp_audio.sh
dd if="$IN9" of="$OUT9"
rm -rf "$IN9"

IN10=/data/data/com.androidvip.hebf/wpp_imagens.sh
OUT10=/data/data/com.androidvip.hebf/limpador/wpp_imagens.sh
dd if="$IN10" of="$OUT10"
rm -rf "$IN10"

IN11=/data/data/com.androidvip.hebf/wpp_docs.sh
OUT11=/data/data/com.androidvip.hebf/limpador/wpp_docs.sh
dd if="$IN11" of="$OUT11"
rm -rf "$IN11"

IN12=/data/data/com.androidvip.hebf/wpp_voz.sh
OUT12=/data/data/com.androidvip.hebf/limpador/wpp_voz.sh
dd if="$IN12" of="$OUT12"
rm -rf "$IN12"

IN13=/data/data/com.androidvip.hebf/wpp_video.sh
OUT13=/data/data/com.androidvip.hebf/limpador/wpp_video.sh
dd if="$IN13" of="$OUT13"
rm -rf "$IN13"

