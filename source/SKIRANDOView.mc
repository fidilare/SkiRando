using Toybox.WatchUi;
using Toybox.System as Sys;

class SKIRANDOView extends WatchUi.View {
  function initialize() { View.initialize(); }

  // Load your resources here
  function onLayout(dc) { setLayout(Rez.Layouts.MainLayout(dc)); }

  // Called when this View is brought to the foreground. Restore
  // the state of this View and prepare it to be shown. This includes
  // loading resources into memory.
  function onShow() {}

  // Update the view
  function onUpdate(dc) {
    // Show the current time
    var clockTime = Sys.getClockTime();
    var timeString = Lang.format("$1$:$2$:$3$", [
      (clockTime.hour).format("%02d"),
      (clockTime.min).format("%02d"),
      (clockTime.sec).format("%02d")
    ]);
    Sys.println(timeString);

    var layerTime = View.findDrawableById("label_id");
    layerTime.setText(timeString);

    // Call the parent onUpdate function to redraw the layout
    View.onUpdate(dc);
  }

  // Called when this View is removed from the screen. Save the
  // state of this View here. This includes freeing resources from
  // memory.
  function onHide() {}
}
