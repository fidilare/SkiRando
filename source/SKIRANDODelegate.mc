using Toybox.WatchUi;

class SKIRANDODelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new SKIRANDOMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}