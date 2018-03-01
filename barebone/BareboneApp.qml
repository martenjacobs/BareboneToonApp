import QtQuick 1.1
import qb.components 1.0
import qb.base 1.0;

App {
	id: bareboneApp

	// These are the URL's for the QML resources from which our widgets will be instantiated.
	// By making them a URL type property they will automatically be converted to full paths,
	// preventing problems when passing them around to code that comes from a different path.
	property url tileUrl : "BareboneTile.qml";
	property url thumbnailIcon: "drawables/bone.png";

	property string bigStr
	property string smallStr

	function init() {
		registry.registerWidget(
				"tile",
				tileUrl,
				this,
				null,
				{
					thumbLabel: "BareApp",
					thumbIcon: thumbnailIcon,
					thumbCategory: "general",
					thumbWeight: 30,
					baseTileWeight: 10,
					baseTileSolarWeight: 10,
					thumbIconVAlignment: "center"
				});
	}

	function updateBareboneTiles() {
		bigStr = "BIG";
		smallStr = "small";
	}

	Timer {
		id: myTimer
		interval: 1000
		triggeredOnStart: true
		running: true
		repeat: true
		onTriggered: updateBareboneTiles()
	}
}
