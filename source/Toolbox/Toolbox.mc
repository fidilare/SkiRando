using Toybox.Lang as Lang;
using Toybox.System as Sys;

module Toolbox
{
    // Convert the given clockTime to a string, using the system 24 hours setting
    function convertTime(clockTime) {
    var timeString = "";

    if (Sys.getDeviceSettings().is24Hour) {
        timeString = Lang.format("$1$:$2$:$3$", [
        (clockTime.hour).format("%02d"), 
        (clockTime.min).format("%02d"),
        (clockTime.sec).format("%02d")
        ]);
    } else {
        timeString = Lang.format("$1$:$2$:$3$", [
        (clockTime.hour % 12), 
        (clockTime.min).format("%02d"),
        (clockTime.sec).format("%02d")
        ]);
    }

    return timeString;
    }
}
