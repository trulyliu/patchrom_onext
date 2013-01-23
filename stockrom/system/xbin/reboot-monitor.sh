#
# reboot-monitor: to debug issue that system_server crash
#                 before `reboot` but after `remount`
#
DATA_DEV=/dev/block/platform/sdhci-tegra.3/by-name/UDA
DATA_MP=/data
KMSG=/dev/kmsg
LAST_DLOG=/data/htclog/last_devicelog

# timeout after sys.shutdown.monitor.delay secs; default 3 mins
sleep `getprop sys.shutdown.monitor.delay 180`

# remount /data as writable
mount -w -o remount $DATA_DEV $DATA_MP

# leave some info in kmsg
MSG="reboot-monitor: device shutdown timeout; dumpping device log to $LAST_DLOG"
echo "******************************** WARNING ********************************" > "$KMSG"
echo "$MSG" > "$KMSG"
echo "******************************** WARNING ********************************" > "$KMSG"

# save device log until reset
test -f "$LAST_DLOG" && rm "$LAST_DLOG"
echo "$(date): $MSG:" > "$LAST_DLOG"
logcat -v threadtime >> "$LAST_DLOG"
